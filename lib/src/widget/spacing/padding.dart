import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient padding functionality.
///
/// This extension adds methods to easily apply padding to any widget using
/// various padding configurations. All methods return new [Padding] widgets
/// without modifying the original widget.
///
/// The extension provides both granular control (paddingOnly) and convenient
/// shortcuts (paddingAll, paddingHorizontal, etc.) for common padding patterns.
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .paddingAll(16.0)
///   .paddingHorizontal(8.0); // Adds 16px all around, then 8px more horizontally
/// ```
extension PaddingExtensions on Widget {
  /// Applies the specified [EdgeInsets] padding to the widget.
  ///
  /// This is the base method that wraps the widget in a [Padding] widget
  /// with the provided [EdgeInsets]. Other padding methods in this extension
  /// use this method internally.
  ///
  /// Parameters:
  /// - [padding]: The [EdgeInsets] to apply around the widget.
  ///
  /// Returns a [Padding] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Custom padding')
  ///   .padding(EdgeInsets.fromLTRB(10, 20, 30, 40));
  /// ```
  Padding padding(EdgeInsets padding) => Padding(padding: padding, child: this);

  /// Applies uniform padding to all sides of the widget.
  ///
  /// Creates equal padding on the left, top, right, and bottom sides.
  /// This is one of the most commonly used padding methods for creating
  /// consistent spacing around content.
  ///
  /// Parameters:
  /// - [padding]: The amount of padding to apply to all sides.
  ///
  /// Returns a [Padding] widget with uniform padding on all sides.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.star)
  ///   .paddingAll(12.0); // Adds 12px padding on all sides
  /// ```
  Padding paddingAll(double padding) => this.padding(EdgeInsets.all(padding));

  /// Applies specific padding to individual sides of the widget.
  ///
  /// Allows fine-grained control over padding by specifying different
  /// values for each side. Any unspecified sides default to 0.
  ///
  /// Parameters:
  /// - [left]: Padding for the left side. Defaults to 0.
  /// - [top]: Padding for the top side. Defaults to 0.
  /// - [right]: Padding for the right side. Defaults to 0.
  /// - [bottom]: Padding for the bottom side. Defaults to 0.
  ///
  /// Returns a [Padding] widget with the specified padding on each side.
  ///
  /// Example:
  /// ```dart
  /// Text('Asymmetric padding')
  ///   .paddingOnly(left: 16, top: 8, right: 16, bottom: 24);
  /// ```
  Padding paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      padding(
        EdgeInsets.only(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
        ),
      );

  /// Applies symmetric padding to horizontal and vertical axes.
  ///
  /// Creates padding that is symmetric along both axes - the same padding
  /// is applied to left/right sides and top/bottom sides respectively.
  /// This is useful for creating balanced layouts.
  ///
  /// Parameters:
  /// - [horizontal]: Padding for left and right sides. Defaults to 0.
  /// - [vertical]: Padding for top and bottom sides. Defaults to 0.
  ///
  /// Returns a [Padding] widget with symmetric padding.
  ///
  /// Example:
  /// ```dart
  /// Card(
  ///   child: Text('Card content')
  ///     .paddingSymmetric(horizontal: 16, vertical: 12),
  /// );
  /// ```
  Padding paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      padding(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  /// Applies padding to the left and right sides only.
  ///
  /// This is a convenience method equivalent to calling
  /// `paddingSymmetric(horizontal: horizontal)`. Useful for adding
  /// horizontal spacing while maintaining vertical alignment.
  ///
  /// Parameters:
  /// - [horizontal]: The amount of padding to apply to both left and right sides.
  ///
  /// Returns a [Padding] widget with horizontal padding only.
  ///
  /// Example:
  /// ```dart
  /// ListView.builder(
  ///   itemBuilder: (context, index) => ListTile(
  ///     title: Text('Item $index'),
  ///   ).paddingHorizontal(16),
  /// );
  /// ```
  Padding paddingHorizontal(double horizontal) =>
      paddingSymmetric(horizontal: horizontal);

  /// Applies padding to the top and bottom sides only.
  ///
  /// This is a convenience method equivalent to calling
  /// `paddingSymmetric(vertical: vertical)`. Useful for adding
  /// vertical spacing while maintaining horizontal alignment.
  ///
  /// Parameters:
  /// - [vertical]: The amount of padding to apply to both top and bottom sides.
  ///
  /// Returns a [Padding] widget with vertical padding only.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Title').paddingVertical(8),
  ///     Text('Subtitle').paddingVertical(4),
  ///   ],
  /// );
  /// ```
  Padding paddingVertical(double vertical) =>
      paddingSymmetric(vertical: vertical);

  /// Applies padding to the left side only.
  ///
  /// Adds spacing to the left side while leaving other sides unchanged.
  /// Useful for indentation or creating left margins.
  ///
  /// Parameters:
  /// - [left]: The amount of padding to apply to the left side.
  ///
  /// Returns a [Padding] widget with left-side padding only.
  ///
  /// Example:
  /// ```dart
  /// Text('Indented text').paddingLeft(24);
  /// ```
  Padding paddingLeft(double left) => paddingOnly(left: left);

  /// Applies padding to the right side only.
  ///
  /// Adds spacing to the right side while leaving other sides unchanged.
  /// Useful for creating right margins or spacing from right-aligned content.
  ///
  /// Parameters:
  /// - [right]: The amount of padding to apply to the right side.
  ///
  /// Returns a [Padding] widget with right-side padding only.
  ///
  /// Example:
  /// ```dart
  /// Text('Right-spaced text').paddingRight(16);
  /// ```
  Padding paddingRight(double right) => paddingOnly(right: right);

  /// Applies padding to the top side only.
  ///
  /// Adds spacing to the top side while leaving other sides unchanged.
  /// Useful for creating top margins or spacing from headers.
  ///
  /// Parameters:
  /// - [top]: The amount of padding to apply to the top side.
  ///
  /// Returns a [Padding] widget with top-side padding only.
  ///
  /// Example:
  /// ```dart
  /// Text('Content with top spacing').paddingTop(20);
  /// ```
  Padding paddingTop(double top) => paddingOnly(top: top);

  /// Applies padding to the bottom side only.
  ///
  /// Adds spacing to the bottom side while leaving other sides unchanged.
  /// Useful for creating bottom margins or spacing from footers.
  ///
  /// Parameters:
  /// - [bottom]: The amount of padding to apply to the bottom side.
  ///
  /// Returns a [Padding] widget with bottom-side padding only.
  ///
  /// Example:
  /// ```dart
  /// Text('Content with bottom spacing').paddingBottom(12);
  /// ```
  Padding paddingBottom(double bottom) => paddingOnly(bottom: bottom);
}
