import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class _SuperellipseClipper extends CustomClipper<Path> {
  final double n;
  final int steps;

  const _SuperellipseClipper([
    this.n = 4,
    this.steps = 64,
  ]);

  // Static cache map
  static final Map<_SuperellipseCacheKey, Path> _cache = {};

  @override
  Path getClip(Size size) {
    final key = _SuperellipseCacheKey(n: n, steps: steps, size: size);

    // Return cached path if exists
    if (_cache.containsKey(key)) return _cache[key]!;

    // Generate and cache
    final a = size.width / 2;
    final b = size.height / 2;
    final cx = a;
    final cy = b;

    final path = Path();
    for (int i = 0; i <= steps; i++) {
      final theta = (2 * pi * i) / steps;
      final cosT = cos(theta);
      final sinT = sin(theta);
      final x = a * pow(cosT.abs(), 2 / n) * cosT.sign;
      final y = b * pow(sinT.abs(), 2 / n) * sinT.sign;

      if (i == 0) {
        path.moveTo(cx + x, cy + y);
      } else {
        path.lineTo(cx + x, cy + y);
      }
    }

    path.close();
    _cache[key] = path;
    return path;
  }

  @override
  bool shouldReclip(covariant _SuperellipseClipper oldClipper) =>
      n != oldClipper.n || steps != oldClipper.steps;
}

class _SuperellipseCacheKey {
  final double n;
  final int steps;
  final Size size;

  const _SuperellipseCacheKey({
    required this.n,
    required this.steps,
    required this.size,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _SuperellipseCacheKey &&
          n == other.n &&
          steps == other.steps &&
          size == other.size;

  @override
  int get hashCode => n.hashCode ^ steps.hashCode ^ size.hashCode;
}

void main() {
  group('SuperellipseClipper', () {
    const size = Size(200, 200);

    test('generates a non-empty path', () {
      final clipper = _SuperellipseClipper(4, 64);
      final path = clipper.getClip(size);

      expect(path, isA<Path>());
      expect(path.getBounds().isEmpty, isFalse);
    });

    test('returns same path from cache', () {
      final clipper1 = _SuperellipseClipper(4, 64);
      final clipper2 = _SuperellipseClipper(4, 64);

      final path1 = clipper1.getClip(size);
      final path2 = clipper2.getClip(size);

      expect(identical(path1, path2), isTrue, reason: 'Should reuse cache');
    });

    test('returns different path for different n', () {
      final pathA = _SuperellipseClipper(3, 64).getClip(size);
      final pathB = _SuperellipseClipper(4, 64).getClip(size);

      expect(identical(pathA, pathB), isFalse);
    });

    test('returns different path for different steps', () {
      final pathA = _SuperellipseClipper(4, 32).getClip(size);
      final pathB = _SuperellipseClipper(4, 64).getClip(size);

      expect(identical(pathA, pathB), isFalse);
    });

    test('performance: uncached and cached', () {
      const n = 5.0;
      const steps = 128;
      final clipper = _SuperellipseClipper(n, steps);

      final stopwatch = Stopwatch()..start();
      final path1 = clipper.getClip(size);
      stopwatch.stop();
      final timeUncached = stopwatch.elapsedMicroseconds;

      final stopwatch2 = Stopwatch()..start();
      final path2 = clipper.getClip(size);
      stopwatch2.stop();
      final timeCached = stopwatch2.elapsedMicroseconds;

      expect(path1, isA<Path>());
      expect(path2, same(path1), reason: 'Should hit the cache');

      debugPrint(
          'SuperellipseClipper: uncached = $timeUncachedµs, cached = $timeCachedµs');
    });
  });
}
