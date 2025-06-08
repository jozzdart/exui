import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient path clipping functionality.
///
/// This extension adds a method to easily apply custom path clipping to any widget
/// using [ClipPath]. This allows for creating complex, custom-shaped clipping regions
/// beyond the standard rectangular and oval shapes.
///
/// Path clipping is useful for creating unique visual effects, custom shapes,
/// and complex masking operations on widgets.
///
/// Example usage:
/// ```dart
/// Container(color: Colors.blue)
///   .clipPath(
///     clipper: MyCustomClipper(),
///     clipBehavior: Clip.antiAlias,
///   );
/// ```
extension ClipPathWidgetExtensions on Widget {
  /// Clips the widget using a custom path.
  ///
  /// Creates a [ClipPath] widget that clips its child using a custom path
  /// defined by a [CustomClipper]. This allows for complex, non-standard
  /// clipping shapes that go beyond simple rectangles and ovals.
  ///
  /// The clipper parameter defines the custom path used for clipping.
  /// If no clipper is provided, the widget will not be clipped.
  ///
  /// Parameters:
  /// - [clipper]: Optional custom clipper that defines the clipping path.
  ///   If null, no clipping is applied.
  /// - [clipBehavior]: How to clip the content. Defaults to [Clip.antiAlias]
  ///   for smooth edges.
  ///
  /// Returns a [ClipPath] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// // Custom star-shaped clipper
  /// class StarClipper extends CustomClipper<Path> {
  ///   @override
  ///   Path getClip(Size size) {
  ///     // Implementation to create star path
  ///     return starPath;
  ///   }
  ///
  ///   @override
  ///   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  /// }
  ///
  /// Container(
  ///   width: 100,
  ///   height: 100,
  ///   color: Colors.red,
  /// ).clipPath(clipper: StarClipper());
  ///
  /// // Using with different clip behaviors
  /// Image.asset('photo.jpg')
  ///   .clipPath(
  ///     clipper: WaveClipper(),
  ///     clipBehavior: Clip.hardEdge,
  ///   );
  /// ```
  ClipPath clipPath({
    CustomClipper<Path>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipPath(
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }
}
