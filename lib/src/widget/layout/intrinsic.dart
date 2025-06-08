import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient intrinsic sizing functionality.
///
/// This extension adds methods to easily wrap widgets in [IntrinsicHeight] and [IntrinsicWidth]
/// widgets for controlling how widgets size themselves based on their intrinsic dimensions.
/// All methods return new intrinsic sizing widgets without modifying the original widget.
///
/// **Intrinsic sizing** forces widgets to size themselves based on their natural content size
/// rather than taking up all available space. This is particularly useful in layouts where
/// you want widgets to be sized consistently based on their content.
///
/// **Performance Note**: Intrinsic sizing can be expensive as it requires additional layout
/// passes. Use sparingly and only when necessary for the desired layout behavior.
///
/// Example usage:
/// ```dart
/// Row(
///   children: [
///     Text('Short').intrinsicWidth(),
///     Text('Much longer text').intrinsicWidth(),
///   ],
/// ); // Both text widgets will have the same width (the wider one)
/// ```
extension IntrinsicWidthWidgetExtensions on Widget {
  /// Wraps the widget in an [IntrinsicHeight] widget.
  ///
  /// Creates an [IntrinsicHeight] widget that sizes its child to the child's
  /// intrinsic height. This forces the child to be as tall as it would naturally
  /// be if it had unlimited height available.
  ///
  /// This is useful when you want widgets in a row to all have the same height
  /// based on the tallest widget's natural height.
  ///
  /// Returns an [IntrinsicHeight] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Container(width: 50, height: 30, color: Colors.red)
  ///       .intrinsicHeight(),
  ///     Container(width: 50, height: 60, color: Colors.blue)
  ///       .intrinsicHeight(),
  ///   ],
  /// ); // Both containers will be 60px tall
  /// ```
  IntrinsicHeight intrinsicHeight() => IntrinsicHeight(child: this);

  /// Wraps the widget in an [IntrinsicWidth] widget with default settings.
  ///
  /// This is a convenience method equivalent to calling `intrinsicWidthWith()`.
  /// Creates an [IntrinsicWidth] widget that sizes its child to the child's
  /// intrinsic width without any step constraints.
  ///
  /// Returns an [IntrinsicWidth] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Short').intrinsicWidth(),
  ///     Text('Much longer text content').intrinsicWidth(),
  ///   ],
  /// ); // Both text widgets will have the same width
  /// ```
  IntrinsicWidth intrinsicWidth() => intrinsicWidthWith();

  /// Wraps the widget in an [IntrinsicWidth] widget with optional step constraints.
  ///
  /// Creates an [IntrinsicWidth] widget that sizes its child to the child's
  /// intrinsic width. The step parameters allow you to quantize the sizing
  /// to specific increments, which can be useful for creating grid-like layouts.
  ///
  /// Parameters:
  /// - [stepWidth]: If non-null, the child's width will be a multiple of this value.
  ///   The actual width will be the smallest multiple of stepWidth that accommodates
  ///   the child's intrinsic width.
  /// - [stepHeight]: If non-null, the child's height will be a multiple of this value.
  ///   The actual height will be the smallest multiple of stepHeight that accommodates
  ///   the child's intrinsic height.
  ///
  /// Returns an [IntrinsicWidth] widget with the specified step constraints.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Hello').intrinsicWidthWith(stepWidth: 50),
  ///     Text('World').intrinsicWidthWith(stepWidth: 50),
  ///   ],
  /// ); // Both widgets will be sized in 50px width increments
  /// ```
  IntrinsicWidth intrinsicWidthWith({
    double? stepWidth,
    double? stepHeight,
  }) =>
      IntrinsicWidth(
        stepWidth: stepWidth,
        stepHeight: stepHeight,
        child: this,
      );

  /// Wraps the widget in an [IntrinsicWidth] widget with a specific step height.
  ///
  /// This is a convenience method equivalent to calling
  /// `intrinsicWidthWith(stepHeight: stepHeight)`. The widget's height will be
  /// quantized to multiples of the specified step height.
  ///
  /// Parameters:
  /// - [stepHeight]: The height increment. The widget's height will be the smallest
  ///   multiple of this value that accommodates the widget's intrinsic height.
  ///
  /// Returns an [IntrinsicWidth] widget with the specified step height.
  ///
  /// Example:
  /// ```dart
  /// Text('Variable height content')
  ///   .intrinsicWidthStepHeight(20); // Height will be in 20px increments
  /// ```
  IntrinsicWidth intrinsicWidthStepHeight(double stepHeight) =>
      intrinsicWidthWith(stepHeight: stepHeight);

  /// Wraps the widget in an [IntrinsicWidth] widget with a specific step width.
  ///
  /// This is a convenience method equivalent to calling
  /// `intrinsicWidthWith(stepWidth: stepWidth)`. The widget's width will be
  /// quantized to multiples of the specified step width.
  ///
  /// Parameters:
  /// - [stepWidth]: The width increment. The widget's width will be the smallest
  ///   multiple of this value that accommodates the widget's intrinsic width.
  ///
  /// Returns an [IntrinsicWidth] widget with the specified step width.
  ///
  /// Example:
  /// ```dart
  /// Text('Variable width content')
  ///   .intrinsicWidthStepWidth(30); // Width will be in 30px increments
  /// ```
  IntrinsicWidth intrinsicWidthStepWidth(double stepWidth) =>
      intrinsicWidthWith(stepWidth: stepWidth);
}
