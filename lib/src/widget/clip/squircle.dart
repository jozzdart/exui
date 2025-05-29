import 'dart:math';

import 'package:flutter/widgets.dart';

/// Extension to clip any widget into a squircle (rounded square) shape.
///
/// A squircle is a shape between a square and a circle, commonly used
/// in modern UI design (e.g., iOS app icons). This method wraps the widget
/// in a [ClipPath] using a custom [_SquircleClipper] for visually appealing,
/// smoothly rounded corners.
///
/// The [radiusFactor] controls how round the corners appear:
/// - Lower values (e.g., 2.0) produce more circular corners.
/// - Higher values (e.g., 4.0) produce more squared corners.
/// A typical value for balanced appearance is `2.5`.
///
/// The [clipBehavior] defaults to [Clip.antiAlias] for smooth edges,
/// but can be customized for performance-sensitive cases.
///
/// Example:
/// ```dart
/// Container(color: Colors.blue).clipSquircle(2.5);
/// ```
///
extension SquircleWidgetExtensions on Widget {
  /// Clips the widget using a squircle shape.
  Widget clipSquircle([
    double radiusFactor = 2.5,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipPath(
      clipper: _SquircleClipper(radiusFactor),
      clipBehavior: clipBehavior,
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
