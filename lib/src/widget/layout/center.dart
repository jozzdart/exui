import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient centering functionality.
///
/// This extension adds methods to easily center widgets using [Center] widgets
/// with optional width and height factor controls. All methods return new
/// [Center] widgets without modifying the original widget.
///
/// The extension provides both combined centering (center) and individual
/// factor control (centerWidth, centerHeight) for flexible alignment control.
///
/// Example usage:
/// ```dart
/// Text('Centered text')
///   .center()
///   .centerWidth(0.8); // Center with 80% width factor
/// ```
extension CenterWidgetExtension on Widget {
  /// Centers the widget with optional width and height factors.
  ///
  /// Creates a [Center] widget that centers its child both horizontally and
  /// vertically. The width and height factors control how much space the
  /// centered widget should occupy relative to its parent.
  ///
  /// Parameters:
  /// - [widthFactor]: If non-null, the width factor to apply. The width of the
  ///   [Center] will be the child's width multiplied by this factor. Must be >= 0.
  /// - [heightFactor]: If non-null, the height factor to apply. The height of the
  ///   [Center] will be the child's height multiplied by this factor. Must be >= 0.
  ///
  /// Returns a [Center] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Perfectly centered')
  ///   .center(); // Centers without size constraints
  ///
  /// Container(width: 100, height: 50, color: Colors.blue)
  ///   .center(widthFactor: 2.0, heightFactor: 1.5); // Centers with size factors
  /// ```
  Center center({
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  /// Centers the widget with a specific width factor.
  ///
  /// This is a convenience method equivalent to calling `center(widthFactor: widthFactor)`.
  /// The widget will be centered with the specified width factor applied.
  ///
  /// Parameters:
  /// - [widthFactor]: The width factor to apply. If null, no width constraint is applied.
  ///   Must be >= 0 if provided.
  ///
  /// Returns a [Center] widget with the specified width factor.
  ///
  /// Example:
  /// ```dart
  /// Text('80% width centered text')
  ///   .centerWidth(0.8); // Centers with 80% of available width
  ///
  /// Icon(Icons.star)
  ///   .centerWidth(1.5); // Centers with 150% width factor
  /// ```
  Center centerWidth(double? widthFactor) => center(widthFactor: widthFactor);

  /// Centers the widget with a specific height factor.
  ///
  /// This is a convenience method equivalent to calling `center(heightFactor: heightFactor)`.
  /// The widget will be centered with the specified height factor applied.
  ///
  /// Parameters:
  /// - [heightFactor]: The height factor to apply. If null, no height constraint is applied.
  ///   Must be >= 0 if provided.
  ///
  /// Returns a [Center] widget with the specified height factor.
  ///
  /// Example:
  /// ```dart
  /// Text('Double height centered text')
  ///   .centerHeight(2.0); // Centers with 200% height factor
  ///
  /// Container(width: 50, height: 50, color: Colors.red)
  ///   .centerHeight(0.5); // Centers with 50% height factor
  /// ```
  Center centerHeight(double? heightFactor) =>
      center(heightFactor: heightFactor);
}
