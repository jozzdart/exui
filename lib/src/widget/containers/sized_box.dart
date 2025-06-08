import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient sizing functionality.
///
/// This extension adds methods to easily wrap widgets in [SizedBox] containers
/// with specific width and height constraints. All methods return new [SizedBox]
/// widgets without modifying the original widget.
///
/// The extension provides both combined sizing (sizedBox) and individual
/// dimension control (sizedWidth, sizedHeight) for flexible layout control.
///
/// Example usage:
/// ```dart
/// Text('Fixed size text')
///   .sizedBox(width: 200, height: 100)
///   .sizedWidth(150); // Override width to 150
/// ```
extension SizedBoxExtension on Widget {
  /// Wraps the widget in a [SizedBox] with the specified dimensions.
  ///
  /// Creates a [SizedBox] that constrains the widget to the specified width
  /// and/or height. If only one dimension is specified, the other dimension
  /// will be determined by the widget's intrinsic size.
  ///
  /// Parameters:
  /// - [width]: The width constraint for the widget. If null, width is unconstrained.
  /// - [height]: The height constraint for the widget. If null, height is unconstrained.
  ///
  /// Returns a [SizedBox] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Container(color: Colors.blue)
  ///   .sizedBox(width: 100, height: 50); // Fixed 100x50 blue rectangle
  ///
  /// Text('Long text that will be constrained')
  ///   .sizedBox(width: 200); // Fixed width, height determined by text
  /// ```
  SizedBox sizedBox({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  /// Wraps the widget in a [SizedBox] with a specific width.
  ///
  /// This is a convenience method equivalent to calling `sizedBox(width: width)`.
  /// The height will be determined by the widget's intrinsic height.
  ///
  /// Parameters:
  /// - [width]: The width constraint for the widget.
  ///
  /// Returns a [SizedBox] widget with the specified width.
  ///
  /// Example:
  /// ```dart
  /// Text('This text will be exactly 150 pixels wide')
  ///   .sizedWidth(150);
  ///
  /// Icon(Icons.star)
  ///   .sizedWidth(24); // Icon with fixed 24px width
  /// ```
  SizedBox sizedWidth(double width) => sizedBox(width: width);

  /// Wraps the widget in a [SizedBox] with a specific height.
  ///
  /// This is a convenience method equivalent to calling `sizedBox(height: height)`.
  /// The width will be determined by the widget's intrinsic width.
  ///
  /// Parameters:
  /// - [height]: The height constraint for the widget.
  ///
  /// Returns a [SizedBox] widget with the specified height.
  ///
  /// Example:
  /// ```dart
  /// Text('This text will be exactly 40 pixels tall')
  ///   .sizedHeight(40);
  ///
  /// Divider()
  ///   .sizedHeight(2); // Divider with fixed 2px height
  /// ```
  SizedBox sizedHeight(double height) => sizedBox(height: height);
}
