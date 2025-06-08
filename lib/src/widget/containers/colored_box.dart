import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient colored background functionality.
///
/// This extension adds a method to easily wrap widgets in [ColoredBox] containers
/// with solid color backgrounds. The method returns a new [ColoredBox] widget
/// without modifying the original widget.
///
/// [ColoredBox] is more efficient than [Container] when you only need a solid
/// color background, as it doesn't include the overhead of other container features
/// like borders, padding, or decorations.
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .coloredBox(Colors.blue); // Blue background behind text
/// ```
extension ColoredBoxExtension on Widget {
  /// Wraps the widget in a [ColoredBox] with the specified background color.
  ///
  /// Creates a [ColoredBox] that paints a solid color behind the child widget.
  /// This is the most efficient way to add a solid color background to any widget,
  /// as [ColoredBox] is optimized specifically for this purpose.
  ///
  /// Parameters:
  /// - [color]: The background color to paint behind the widget.
  ///   Must not be null.
  ///
  /// Returns a [ColoredBox] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('White text on red background')
  ///   .coloredBox(Colors.red);
  ///
  /// Icon(Icons.star, color: Colors.white)
  ///   .coloredBox(Colors.black); // Black background behind white star
  ///
  /// // Chaining with other extensions
  /// Text('Styled text')
  ///   .coloredBox(Colors.lightBlue)
  ///   .paddingAll(16)
  ///   .clipCircular(8);
  /// ```
  ColoredBox coloredBox(
    Color color,
  ) =>
      ColoredBox(
        color: color,
        child: this,
      );
}
