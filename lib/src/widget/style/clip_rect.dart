import 'dart:math';

import 'package:flutter/widgets.dart';

extension ClipRectWidgetExtensions on Widget {
  /// Clip the widget with a rounded rectangle.
  Widget clipCircular([double radius = 12]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  Widget clipCircle({
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipOval(
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Clip the widget with a squircle.
  Widget clipSquircle([double radiusFactor = 2.5]) {
    return ClipPath(
      clipper: _SquircleClipper(radiusFactor),
      child: this,
    );
  }
}

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
