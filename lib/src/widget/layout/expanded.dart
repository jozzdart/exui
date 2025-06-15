import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient expanded layout functionality.
///
/// This extension adds methods to easily wrap widgets in [Expanded] widgets for
/// flexible layout control within [Row], [Column], and [Flex] widgets. All methods
/// return new [Expanded] widgets without modifying the original widget.
///
/// The extension provides both flexible control (expandedFlex) and convenient
/// shortcuts for common flex values (expanded, expanded2, expanded3, etc.).
///
/// Expanded widgets force their children to occupy all available space along
/// the main axis of their parent Flex widget, distributed according to their flex values.
///
/// Example usage:
/// ```dart
/// Row(
///   children: [
///     Text('Fixed').expanded,      // Takes 1 part of available space
///     Text('Double').expanded2,    // Takes 2 parts of available space
///     Text('Custom').expandedFlex(3), // Takes 3 parts of available space
///   ],
/// );
/// ```
extension ExpandedWidgetExtension on Widget {
  /// Wraps the widget in an [Expanded] with the specified flex value.
  ///
  /// Creates an [Expanded] widget that forces the child to occupy available
  /// space along the main axis of its parent [Row], [Column], or [Flex].
  /// The flex value determines how much space this widget should occupy
  /// relative to other [Expanded] or [Flexible] widgets in the same parent.
  ///
  /// Parameters:
  /// - [flex]: The flex factor to use. Higher values take more space.
  ///   Defaults to 1. Must be >= 0.
  ///
  /// Returns an [Expanded] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Container(color: Colors.red).expandedFlex(1),   // 1/6 of space
  ///     Container(color: Colors.blue).expandedFlex(2),  // 2/6 of space
  ///     Container(color: Colors.green).expandedFlex(3), // 3/6 of space
  ///   ],
  /// );
  /// ```
  Expanded expandedFlex([int flex = 1]) => Expanded(
        flex: flex,
        child: this,
      );

  /// Wraps the widget in an [Expanded] with flex value 1.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(1)`.
  /// Most commonly used for equal distribution of space among siblings.
  ///
  /// Returns an [Expanded] widget with flex value 1.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Left').expanded,   // Equal space
  ///     Text('Right').expanded,  // Equal space
  ///   ],
  /// );
  /// ```
  Expanded get expanded1 => expandedFlex(1);

  /// Wraps the widget in an [Expanded] with flex value 2.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(2)`.
  /// Takes twice as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 2.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Small').expanded,   // 1/3 of space
  ///     Text('Large').expanded2,  // 2/3 of space
  ///   ],
  /// );
  /// ```
  Expanded get expanded2 => expandedFlex(2);

  /// Wraps the widget in an [Expanded] with flex value 3.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(3)`.
  /// Takes three times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 3.
  Expanded get expanded3 => expandedFlex(3);

  /// Wraps the widget in an [Expanded] with flex value 4.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(4)`.
  /// Takes four times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 4.
  Expanded get expanded4 => expandedFlex(4);

  /// Wraps the widget in an [Expanded] with flex value 5.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(5)`.
  /// Takes five times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 5.
  Expanded get expanded5 => expandedFlex(5);

  /// Wraps the widget in an [Expanded] with flex value 6.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(6)`.
  /// Takes six times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 6.
  Expanded get expanded6 => expandedFlex(6);

  /// Wraps the widget in an [Expanded] with flex value 7.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(7)`.
  /// Takes seven times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 7.
  Expanded get expanded7 => expandedFlex(7);

  /// Wraps the widget in an [Expanded] with flex value 8.
  ///
  /// This is a convenience getter equivalent to calling `expandedFlex(8)`.
  /// Takes eight times as much space as widgets with flex value 1.
  ///
  /// Returns an [Expanded] widget with flex value 8.
  Expanded get expanded8 => expandedFlex(8);
}
