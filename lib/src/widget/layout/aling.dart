import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient alignment functionality.
///
/// This extension adds methods to easily wrap widgets in [Align] widgets with
/// various alignment options. All methods return new [Align] widgets without
/// modifying the original widget.
///
/// The [Align] widget positions its child within itself according to the specified
/// alignment. It can also optionally size itself based on the child's size using
/// width and height factors.
///
/// **Alignment Options:**
/// - **Center**: center, alignCenter()
/// - **Edges**: centerLeft, centerRight, topCenter, bottomCenter
/// - **Corners**: topLeft, topRight, bottomLeft, bottomRight
///
/// **Size Factors:**
/// - widthFactor: If non-null, sets width to child's width × factor
/// - heightFactor: If non-null, sets height to child's height × factor
/// - If both are null, the Align widget takes up all available space
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .alignTopRight() // Aligns text to top-right corner
///   .sizedBox(width: 200, height: 100);
/// ```
extension AlignedWidgetExtension on Widget {
  /// Wraps the widget in an [Align] widget with the specified alignment.
  ///
  /// Creates an [Align] widget that positions its child according to the
  /// specified alignment within the available space. This is the base method
  /// that other alignment methods in this extension use internally.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the available space.
  ///   Defaults to [Alignment.center].
  /// - [widthFactor]: If non-null, sets the width to the child's width multiplied
  ///   by this factor. If null, the widget takes up all available width.
  /// - [heightFactor]: If non-null, sets the height to the child's height multiplied
  ///   by this factor. If null, the widget takes up all available height.
  ///
  /// Returns an [Align] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Custom aligned text')
  ///   .align(
  ///     alignment: Alignment.topLeft,
  ///     widthFactor: 2.0,  // Width = child width × 2
  ///     heightFactor: 1.5, // Height = child height × 1.5
  ///   );
  /// ```
  Align align({
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) =>
      Align(
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Aligns the widget to the center of the available space.
  ///
  /// This is a convenience method equivalent to calling `align(alignment: Alignment.center)`.
  /// Centers the widget both horizontally and vertically within the available space.
  ///
  /// Parameters:
  /// - [widthFactor]: If non-null, sets the width to the child's width multiplied
  ///   by this factor. If null, takes up all available width.
  /// - [heightFactor]: If non-null, sets the height to the child's height multiplied
  ///   by this factor. If null, takes up all available height.
  ///
  /// Returns an [Align] widget with center alignment.
  ///
  /// Example:
  /// ```dart
  /// Text('Centered text')
  ///   .alignCenter()
  ///   .sizedBox(width: 200, height: 100);
  /// ```
  Align alignCenter({
    double? widthFactor,
    double? heightFactor,
  }) =>
      align(
        alignment: Alignment.center,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the center-left of the available space.
  ///
  /// Positions the widget at the vertical center and horizontal left edge
  /// of the available space. Useful for left-aligned content that should
  /// be vertically centered.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with center-left alignment.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.arrow_back)
  ///   .alignCenterLeft()
  ///   .sizedBox(width: 100, height: 50);
  /// ```
  Align alignCenterLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.centerLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the center-right of the available space.
  ///
  /// Positions the widget at the vertical center and horizontal right edge
  /// of the available space. Useful for right-aligned content that should
  /// be vertically centered.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with center-right alignment.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.arrow_forward)
  ///   .alignCenterRight()
  ///   .sizedBox(width: 100, height: 50);
  /// ```
  Align alignCenterRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.centerRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the top-center of the available space.
  ///
  /// Positions the widget at the horizontal center and top edge
  /// of the available space. Useful for headers or titles that should
  /// be centered horizontally at the top.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with top-center alignment.
  ///
  /// Example:
  /// ```dart
  /// Text('Header Title')
  ///   .alignTopCenter()
  ///   .sizedBox(width: 200, height: 100);
  /// ```
  Align alignTopCenter(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topCenter,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the top-left corner of the available space.
  ///
  /// Positions the widget at the top-left corner, which is often the
  /// default starting position for content in left-to-right layouts.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with top-left alignment.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.menu)
  ///   .alignTopLeft()
  ///   .sizedBox(width: 100, height: 100);
  /// ```
  Align alignTopLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the top-right corner of the available space.
  ///
  /// Positions the widget at the top-right corner, commonly used for
  /// action buttons, close buttons, or secondary navigation elements.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with top-right alignment.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.close)
  ///   .alignTopRight()
  ///   .sizedBox(width: 100, height: 100);
  /// ```
  Align alignTopRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the bottom-left corner of the available space.
  ///
  /// Positions the widget at the bottom-left corner, useful for
  /// status indicators, secondary actions, or footer content.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with bottom-left alignment.
  ///
  /// Example:
  /// ```dart
  /// Text('Status: Online')
  ///   .alignBottomLeft()
  ///   .sizedBox(width: 200, height: 100);
  /// ```
  Align alignBottomLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the bottom-center of the available space.
  ///
  /// Positions the widget at the horizontal center and bottom edge
  /// of the available space. Useful for footer content, action buttons,
  /// or status messages that should be centered at the bottom.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with bottom-center alignment.
  ///
  /// Example:
  /// ```dart
  /// ElevatedButton(
  ///   onPressed: () {},
  ///   child: Text('Continue'),
  /// ).alignBottomCenter()
  ///  .sizedBox(width: 300, height: 200);
  /// ```
  Align alignBottomCenter(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomCenter,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  /// Aligns the widget to the bottom-right corner of the available space.
  ///
  /// Positions the widget at the bottom-right corner, commonly used for
  /// floating action buttons, secondary actions, or corner indicators.
  ///
  /// Parameters:
  /// - [widthFactor]: Width sizing factor relative to child's width.
  /// - [heightFactor]: Height sizing factor relative to child's height.
  ///
  /// Returns an [Align] widget with bottom-right alignment.
  ///
  /// Example:
  /// ```dart
  /// FloatingActionButton(
  ///   onPressed: () {},
  ///   child: Icon(Icons.add),
  /// ).alignBottomRight()
  ///  .sizedBox(width: 300, height: 200);
  /// ```
  Align alignBottomRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );
}
