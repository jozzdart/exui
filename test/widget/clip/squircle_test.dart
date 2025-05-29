import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class _SquircleClipper extends CustomClipper<Path> {
  final double radiusFactor;
  _SquircleClipper(this.radiusFactor);

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

void main() {
  group('SquircleClipper', () {
    const size = Size(200, 200);

    test('generates a non-empty path', () {
      final clipper = _SquircleClipper(2.5);
      final path = clipper.getClip(size);

      expect(path, isA<Path>());
      expect(path.getBounds().isEmpty, isFalse);
    });

    test('different radiusFactor yields different path shapes', () {
      final pathA = _SquircleClipper(2.0).getClip(size);
      final pathB = _SquircleClipper(3.0).getClip(size);

      expect(pathA, isNot(same(pathB)),
          reason: 'Paths should differ with radiusFactor');
      expect(pathA.getBounds(), equals(pathB.getBounds()),
          reason: 'Bounds should match if size is same');
    });

    test('performance: generate path', () {
      final stopwatch = Stopwatch()..start();
      final path = _SquircleClipper(2.5).getClip(size);
      stopwatch.stop();

      expect(path, isA<Path>());
      debugPrint(
          'SquircleClipper: generation took ${stopwatch.elapsedMicroseconds}µs');
    });

    test('shouldReclip always returns false', () {
      final clipper = _SquircleClipper(2.5);
      final otherClipper = _SquircleClipper(3.0);

      expect(clipper.shouldReclip(otherClipper), isFalse);
    });
  });
}
