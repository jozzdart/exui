import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient container functionality.
///
/// This extension adds a method to easily wrap widgets in [Container] widgets
/// with comprehensive styling and layout options. The method returns a new
/// [Container] widget without modifying the original widget.
///
/// The container method provides access to all major [Container] properties
/// including dimensions, colors, padding, margins, decorations, constraints,
/// alignment, and clipping behavior.
///
/// Example usage:
/// ```dart
/// Text('Styled content')
///   .container(
///     width: 200,
///     height: 100,
///     color: Colors.blue,
///     padding: EdgeInsets.all(16),
///     alignment: Alignment.center,
///   );
/// ```
extension ContainerWidgetExtension on Widget {
  /// Wraps the widget in a [Container] with comprehensive styling options.
  ///
  /// Creates a [Container] that can provide sizing, positioning, decoration,
  /// and layout constraints for the child widget. This is one of the most
  /// versatile layout widgets in Flutter.
  ///
  /// Parameters:
  /// - [width]: The width of the container. If null, width is determined by child.
  /// - [height]: The height of the container. If null, height is determined by child.
  /// - [color]: Background color of the container. Cannot be used with [decoration].
  /// - [padding]: Internal padding around the child widget.
  /// - [margin]: External margin around the container.
  /// - [decoration]: Decoration to paint behind the child. Cannot be used with [color].
  /// - [constraints]: Additional constraints to apply to the child.
  /// - [alignment]: How to align the child within the container.
  /// - [clipBehavior]: How to clip the container's contents. Defaults to [Clip.none].
  ///
  /// Returns a [Container] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World')
  ///   .container(
  ///     width: 150,
  ///     height: 80,
  ///     color: Colors.lightBlue,
  ///     padding: EdgeInsets.all(12),
  ///     margin: EdgeInsets.symmetric(vertical: 8),
  ///     alignment: Alignment.center,
  ///   );
  ///
  /// Icon(Icons.star)
  ///   .container(
  ///     decoration: BoxDecoration(
  ///       gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
  ///       borderRadius: BorderRadius.circular(8),
  ///     ),
  ///     padding: EdgeInsets.all(16),
  ///     constraints: BoxConstraints.tightFor(width: 60, height: 60),
  ///   );
  /// ```
  Container container({
    double? width,
    double? height,
    Color? color,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? decoration,
    BoxConstraints? constraints,
    AlignmentGeometry? alignment,
    Clip clipBehavior = Clip.none,
  }) =>
      Container(
        width: width,
        height: height,
        color: color,
        padding: padding,
        margin: margin,
        decoration: decoration,
        constraints: constraints,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );
}
