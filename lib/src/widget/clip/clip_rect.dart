import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient clipping functionality.
///
/// This extension adds methods to easily apply various clipping shapes to any widget,
/// including rounded rectangles, circles, and ovals. All methods return new clipped
/// widgets without modifying the original widget.
///
/// Example usage:
/// ```dart
/// Container(
///   width: 100,
///   height: 100,
///   color: Colors.blue,
/// ).clipCircular(20); // Creates a rounded rectangle with 20px radius
/// ```
extension ClipRectWidgetExtensions on Widget {
  /// Clips the widget to a rounded rectangle shape.
  ///
  /// Creates a [ClipRRect] widget that clips its child to a rounded rectangle
  /// with the specified border radius. This is useful for creating rounded
  /// corners on any widget.
  ///
  /// Parameters:
  /// - [borderRadius]: The border radius for the rounded rectangle.
  ///   Defaults to [BorderRadius.zero] (no rounding).
  /// - [clipper]: Optional custom clipper for more complex clipping shapes.
  /// - [clipBehavior]: How to clip the content. Defaults to [Clip.antiAlias]
  ///   for smooth edges.
  ///
  /// Returns a [ClipRRect] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Image.network('https://example.com/image.jpg')
  ///   .clipRRect(borderRadius: BorderRadius.circular(12));
  /// ```
  ClipRRect clipRRect({
    BorderRadiusGeometry borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRRect(
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Clips the widget to a circular rounded rectangle shape.
  ///
  /// This is a convenience method that creates a [ClipRRect] with uniform
  /// circular border radius on all corners. Commonly used for creating
  /// rounded buttons, cards, or images.
  ///
  /// Parameters:
  /// - [radius]: The radius for all corners. Defaults to 12.0.
  /// - [clipBehavior]: How to clip the content. Defaults to [Clip.antiAlias]
  ///   for smooth edges.
  ///
  /// Returns a [ClipRRect] widget with circular border radius.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 100,
  ///   color: Colors.red,
  /// ).clipCircular(25); // Creates a rounded square with 25px radius corners
  /// ```
  ClipRRect clipCircular([
    double radius = 12,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Clips the widget to an oval shape.
  ///
  /// Creates a [ClipOval] widget that clips its child to an oval shape.
  /// The oval will fit within the widget's bounding box. For square widgets,
  /// this creates a perfect circle.
  ///
  /// Parameters:
  /// - [clipper]: Optional custom clipper for more complex oval shapes.
  /// - [clipBehavior]: How to clip the content. Defaults to [Clip.antiAlias]
  ///   for smooth edges.
  ///
  /// Returns a [ClipOval] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('assets/profile.jpg')
  ///   .clipOval(); // Creates an oval-shaped profile image
  /// ```
  ClipOval clipOval({
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipOval(
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Clips the widget to a circular shape.
  ///
  /// This is an alias for [clipOval] that provides semantic clarity when
  /// the intent is specifically to create a circular shape. Works best
  /// with square widgets to create perfect circles.
  ///
  /// Parameters:
  /// - [clipper]: Optional custom clipper for more complex circular shapes.
  /// - [clipBehavior]: How to clip the content. Defaults to [Clip.antiAlias]
  ///   for smooth edges.
  ///
  /// Returns a [ClipOval] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 80,
  ///   height: 80,
  ///   color: Colors.green,
  /// ).clipCircle(); // Creates a perfect green circle
  /// ```
  ClipOval clipCircle({
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) =>
      clipOval(
        clipper: clipper,
        clipBehavior: clipBehavior,
      );
}
