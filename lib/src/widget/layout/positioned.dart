import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient positioning functionality within [Stack] widgets.
///
/// This extension adds methods to easily wrap widgets in [Positioned] widgets for
/// precise positioning within [Stack] layouts. All methods return new [Positioned]
/// widgets without modifying the original widget.
///
/// The extension provides both comprehensive positioning control (positioned) and
/// convenient shortcuts for individual edge positioning (positionedTop, positionedLeft, etc.).
///
/// **Important**: [Positioned] widgets can only be used as direct children of [Stack] widgets.
/// Using them outside of a [Stack] will cause a runtime error.
///
/// Example usage:
/// ```dart
/// Stack(
///   children: [
///     Container(color: Colors.blue).positioned(left: 10, top: 20),
///     Text('Overlay').positionedTop(50).positionedRight(30),
///   ],
/// );
/// ```
extension PositionedWidgetExtensions on Widget {
  /// Wraps the widget in a [Positioned] widget with the specified positioning constraints.
  ///
  /// Creates a [Positioned] widget that controls where the child is positioned within
  /// its [Stack] parent. You can specify positioning from any combination of edges,
  /// as well as explicit width and height constraints.
  ///
  /// **Positioning Logic:**
  /// - If both [left] and [right] are specified, width is determined by the space between them
  /// - If both [top] and [bottom] are specified, height is determined by the space between them
  /// - [width] and [height] can override the calculated dimensions
  /// - Unspecified edges allow the widget to size itself naturally in that dimension
  ///
  /// Parameters:
  /// - [left]: Distance from the left edge of the stack. If null, left edge is unconstrained.
  /// - [top]: Distance from the top edge of the stack. If null, top edge is unconstrained.
  /// - [right]: Distance from the right edge of the stack. If null, right edge is unconstrained.
  /// - [bottom]: Distance from the bottom edge of the stack. If null, bottom edge is unconstrained.
  /// - [width]: Explicit width constraint. If null, width is determined by positioning or child.
  /// - [height]: Explicit height constraint. If null, height is determined by positioning or child.
  ///
  /// Returns a [Positioned] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     // Positioned 20px from left and top
  ///     Container(width: 50, height: 50, color: Colors.red)
  ///       .positioned(left: 20, top: 20),
  ///
  ///     // Stretched between left and right edges, 10px from top
  ///     Container(height: 30, color: Colors.blue)
  ///       .positioned(left: 0, right: 0, top: 10),
  ///
  ///     // Centered with explicit size
  ///     Text('Centered')
  ///       .positioned(
  ///         left: 50, right: 50, top: 100, bottom: 100,
  ///         width: 100, height: 50,
  ///       ),
  ///   ],
  /// );
  /// ```
  Positioned positioned({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  /// Positions the widget at a specific distance from the top edge of the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(top: top)`.
  /// The widget will be positioned at the specified distance from the top edge,
  /// while other dimensions remain unconstrained.
  ///
  /// Parameters:
  /// - [top]: Distance from the top edge of the stack.
  ///
  /// Returns a [Positioned] widget positioned from the top.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Text('Header').positionedTop(20), // 20px from top
  ///     Text('Content').positionedTop(60), // 60px from top
  ///   ],
  /// );
  /// ```
  Positioned positionedTop(double top) => positioned(top: top);

  /// Positions the widget at a specific distance from the left edge of the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(left: left)`.
  /// The widget will be positioned at the specified distance from the left edge,
  /// while other dimensions remain unconstrained.
  ///
  /// Parameters:
  /// - [left]: Distance from the left edge of the stack.
  ///
  /// Returns a [Positioned] widget positioned from the left.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Icon(Icons.menu).positionedLeft(16), // 16px from left edge
  ///     Text('Title').positionedLeft(60),    // 60px from left edge
  ///   ],
  /// );
  /// ```
  Positioned positionedLeft(double left) => positioned(left: left);

  /// Positions the widget at a specific distance from the right edge of the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(right: right)`.
  /// The widget will be positioned at the specified distance from the right edge,
  /// while other dimensions remain unconstrained.
  ///
  /// Parameters:
  /// - [right]: Distance from the right edge of the stack.
  ///
  /// Returns a [Positioned] widget positioned from the right.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Icon(Icons.close).positionedRight(16), // 16px from right edge
  ///     Text('Menu').positionedRight(60),      // 60px from right edge
  ///   ],
  /// );
  /// ```
  Positioned positionedRight(double right) => positioned(right: right);

  /// Positions the widget at a specific distance from the bottom edge of the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(bottom: bottom)`.
  /// The widget will be positioned at the specified distance from the bottom edge,
  /// while other dimensions remain unconstrained.
  ///
  /// Parameters:
  /// - [bottom]: Distance from the bottom edge of the stack.
  ///
  /// Returns a [Positioned] widget positioned from the bottom.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     FloatingActionButton(onPressed: () {})
  ///       .positionedBottom(20), // 20px from bottom
  ///     Text('Footer').positionedBottom(60), // 60px from bottom
  ///   ],
  /// );
  /// ```
  Positioned positionedBottom(double bottom) => positioned(bottom: bottom);

  /// Constrains the widget to a specific width within the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(width: width)`.
  /// The widget will be constrained to the specified width, while position
  /// and height remain unconstrained unless specified elsewhere.
  ///
  /// Parameters:
  /// - [width]: The width constraint for the positioned widget.
  ///
  /// Returns a [Positioned] widget with the specified width constraint.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.blue)
  ///       .positionedWidth(200)
  ///       .positionedTop(50), // 200px wide, positioned 50px from top
  ///   ],
  /// );
  /// ```
  Positioned positionedWidth(double width) => positioned(width: width);

  /// Constrains the widget to a specific height within the stack.
  ///
  /// This is a convenience method equivalent to calling `positioned(height: height)`.
  /// The widget will be constrained to the specified height, while position
  /// and width remain unconstrained unless specified elsewhere.
  ///
  /// Parameters:
  /// - [height]: The height constraint for the positioned widget.
  ///
  /// Returns a [Positioned] widget with the specified height constraint.
  ///
  /// Example:
  /// ```dart
  /// Stack(
  ///   children: [
  ///     Container(color: Colors.red)
  ///       .positionedHeight(100)
  ///       .positionedLeft(20), // 100px tall, positioned 20px from left
  ///   ],
  /// );
  /// ```
  Positioned positionedHeight(double height) => positioned(height: height);
}
