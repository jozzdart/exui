import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient margin functionality.
///
/// This extension adds methods to easily apply margins to any widget using
/// various margin configurations. All methods return new [Container] widgets
/// with the specified margins without modifying the original widget.
///
/// The extension provides both granular control (marginOnly) and convenient
/// shortcuts (marginAll, marginHorizontal, etc.) for common margin patterns.
///
/// Note: Unlike padding, margins are applied using [Container] widgets, which
/// means they create a new container around the widget with the specified margin.
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .marginAll(16.0)
///   .marginHorizontal(8.0); // Adds 16px margin all around, then 8px more horizontally
/// ```
extension MarginWidgetExtension on Widget {
  /// Applies the specified [EdgeInsets] margin to the widget.
  ///
  /// This is the base method that wraps the widget in a [Container] widget
  /// with the provided margin [EdgeInsets]. Other margin methods in this extension
  /// use this method internally.
  ///
  /// Parameters:
  /// - [margin]: The [EdgeInsets] to apply as margin around the widget.
  ///
  /// Returns a [Container] widget containing this widget as its child with the specified margin.
  ///
  /// Example:
  /// ```dart
  /// Text('Custom margin')
  ///   .margin(EdgeInsets.fromLTRB(10, 20, 30, 40));
  /// ```
  Container margin(EdgeInsets margin) => Container(
        margin: margin,
        child: this,
      );

  /// Applies uniform margin to all sides of the widget.
  ///
  /// Creates equal margin on the left, top, right, and bottom sides.
  /// This is one of the most commonly used margin methods for creating
  /// consistent spacing around content.
  ///
  /// Parameters:
  /// - [margin]: The amount of margin to apply to all sides.
  ///
  /// Returns a [Container] widget with uniform margin on all sides.
  ///
  /// Example:
  /// ```dart
  /// Card(
  ///   child: Text('Card content'),
  /// ).marginAll(12.0); // Adds 12px margin on all sides
  /// ```
  Container marginAll(double margin) => this.margin(EdgeInsets.all(margin));

  /// Applies specific margin to individual sides of the widget.
  ///
  /// Allows fine-grained control over margin by specifying different
  /// values for each side. Any unspecified sides default to 0.
  ///
  /// Parameters:
  /// - [top]: Margin for the top side. Defaults to 0 if not specified.
  /// - [left]: Margin for the left side. Defaults to 0 if not specified.
  /// - [right]: Margin for the right side. Defaults to 0 if not specified.
  /// - [bottom]: Margin for the bottom side. Defaults to 0 if not specified.
  ///
  /// Returns a [Container] widget with the specified margin on each side.
  ///
  /// Example:
  /// ```dart
  /// Text('Asymmetric margin')
  ///   .marginOnly(left: 16, top: 8, right: 16, bottom: 24);
  /// ```
  Container marginOnly({
    double? top,
    double? left,
    double? right,
    double? bottom,
  }) =>
      margin(EdgeInsets.only(
        top: top ?? 0,
        left: left ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      ));

  /// Applies symmetric margin to horizontal and vertical axes.
  ///
  /// Creates margin that is symmetric along both axes - the same margin
  /// is applied to left/right sides and top/bottom sides respectively.
  /// This is useful for creating balanced layouts.
  ///
  /// Parameters:
  /// - [horizontal]: Margin for left and right sides. Defaults to 0.
  /// - [vertical]: Margin for top and bottom sides. Defaults to 0.
  ///
  /// Returns a [Container] widget with symmetric margin.
  ///
  /// Example:
  /// ```dart
  /// ListView(
  ///   children: [
  ///     ListTile(title: Text('Item 1'))
  ///       .marginSymmetric(horizontal: 16, vertical: 8),
  ///   ],
  /// );
  /// ```
  Container marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      margin(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  /// Applies margin to the left and right sides only.
  ///
  /// This is a convenience method equivalent to calling
  /// `marginSymmetric(horizontal: horizontal)`. Useful for adding
  /// horizontal spacing while maintaining vertical alignment.
  ///
  /// Parameters:
  /// - [horizontal]: The amount of margin to apply to both left and right sides.
  ///
  /// Returns a [Container] widget with horizontal margin only.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Centered content').marginHorizontal(32),
  ///   ],
  /// );
  /// ```
  Container marginHorizontal(double horizontal) =>
      marginSymmetric(horizontal: horizontal);

  /// Applies margin to the top and bottom sides only.
  ///
  /// This is a convenience method equivalent to calling
  /// `marginSymmetric(vertical: vertical)`. Useful for adding
  /// vertical spacing while maintaining horizontal alignment.
  ///
  /// Parameters:
  /// - [vertical]: The amount of margin to apply to both top and bottom sides.
  ///
  /// Returns a [Container] widget with vertical margin only.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Icon(Icons.star).marginVertical(8),
  ///     Text('Rating').marginVertical(8),
  ///   ],
  /// );
  /// ```
  Container marginVertical(double vertical) =>
      marginSymmetric(vertical: vertical);

  /// Applies margin to the top side only.
  ///
  /// Adds spacing to the top side while leaving other sides unchanged.
  /// Useful for creating top margins or spacing from headers.
  ///
  /// Parameters:
  /// - [top]: The amount of margin to apply to the top side.
  ///
  /// Returns a [Container] widget with top-side margin only.
  ///
  /// Example:
  /// ```dart
  /// Text('Content with top spacing').marginTop(20);
  /// ```
  Container marginTop(double top) => marginOnly(top: top);

  /// Applies margin to the left side only.
  ///
  /// Adds spacing to the left side while leaving other sides unchanged.
  /// Useful for indentation or creating left margins.
  ///
  /// Parameters:
  /// - [left]: The amount of margin to apply to the left side.
  ///
  /// Returns a [Container] widget with left-side margin only.
  ///
  /// Example:
  /// ```dart
  /// Text('Indented text').marginLeft(24);
  /// ```
  Container marginLeft(double left) => marginOnly(left: left);

  /// Applies margin to the right side only.
  ///
  /// Adds spacing to the right side while leaving other sides unchanged.
  /// Useful for creating right margins or spacing from right-aligned content.
  ///
  /// Parameters:
  /// - [right]: The amount of margin to apply to the right side.
  ///
  /// Returns a [Container] widget with right-side margin only.
  ///
  /// Example:
  /// ```dart
  /// Text('Right-spaced text').marginRight(16);
  /// ```
  Container marginRight(double right) => marginOnly(right: right);

  /// Applies margin to the bottom side only.
  ///
  /// Adds spacing to the bottom side while leaving other sides unchanged.
  /// Useful for creating bottom margins or spacing from footers.
  ///
  /// Parameters:
  /// - [bottom]: The amount of margin to apply to the bottom side.
  ///
  /// Returns a [Container] widget with bottom-side margin only.
  ///
  /// Example:
  /// ```dart
  /// Text('Content with bottom spacing').marginBottom(12);
  /// ```
  Container marginBottom(double bottom) => marginOnly(bottom: bottom);
}
