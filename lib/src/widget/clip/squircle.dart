import 'package:flutter/widgets.dart';

import 'jozz_clips.dart';

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
  ClipPath clipSquircle([
    double radiusFactor = 2.5,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipPath(
      clipper: JozzSquircleClipper(radiusFactor),
      clipBehavior: clipBehavior,
      child: this,
    );
  }
}
