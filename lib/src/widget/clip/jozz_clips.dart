import 'dart:math';

import 'package:flutter/widgets.dart';

class JozzSuperellipseClipper extends CustomClipper<Path> {
  final double n;
  final int steps;

  const JozzSuperellipseClipper([
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
  bool shouldReclip(covariant JozzSuperellipseClipper oldClipper) =>
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

class JozzSquircleClipper extends CustomClipper<Path> {
  final double radiusFactor;
  JozzSquircleClipper(this.radiusFactor);

  @override
  Path getClip(Size size) {
    final double minSize = min(size.width, size.height);
    final double cornerRadius = minSize / radiusFactor;

    final path = Path();
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);
    path.lineTo(size.width, size.height - cornerRadius);
    path.quadraticBezierTo(
        size.width, size.height, size.width - cornerRadius, size.height);
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
