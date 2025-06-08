import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient ways to apply
/// [BoxConstraints] using [ConstrainedBox].
///
/// These methods allow for fluent chaining and provide shortcuts for common
/// constraint patterns, making it easier to control widget sizing without
/// verbose [ConstrainedBox] constructors.
extension ConstrainedBoxExtension on Widget {
  /// Wraps this widget in a [ConstrainedBox] with the specified [constraints].
  ///
  /// This is the base method that other constraint methods build upon.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello')
  ///   .constrainedBox(
  ///     constraints: BoxConstraints(
  ///       minWidth: 100,
  ///       maxHeight: 50,
  ///     ),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [ConstrainedBox], which this method wraps around
  /// * [constrained], for a more convenient way to specify individual constraints
  ConstrainedBox constrainedBox({
    required BoxConstraints constraints,
  }) =>
      ConstrainedBox(
        constraints: constraints,
        child: this,
      );

  /// Wraps this widget in a [ConstrainedBox] with customizable width and height constraints.
  ///
  /// This method provides a convenient way to specify minimum and maximum
  /// width and height constraints without creating a [BoxConstraints] object manually.
  ///
  /// Parameters:
  /// * [minWidth]: The minimum width constraint (defaults to 0.0)
  /// * [maxWidth]: The maximum width constraint (defaults to [double.infinity])
  /// * [minHeight]: The minimum height constraint (defaults to 0.0)
  /// * [maxHeight]: The maximum height constraint (defaults to [double.infinity])
  ///
  /// Example:
  /// ```dart
  /// Container(color: Colors.blue)
  ///   .constrained(
  ///     minWidth: 100,
  ///     maxWidth: 200,
  ///     minHeight: 50,
  ///     maxHeight: 100,
  ///   )
  /// ```
  ///
  /// See also:
  /// * [constrainedWidth], for width-only constraints
  /// * [constrainedHeight], for height-only constraints
  ConstrainedBox constrained({
    double minWidth = 0.0,
    double maxWidth = double.infinity,
    double minHeight = 0.0,
    double maxHeight = double.infinity,
  }) =>
      constrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with width-only constraints.
  ///
  /// This method is useful when you only need to constrain the width
  /// of a widget while leaving height unconstrained.
  ///
  /// Parameters:
  /// * [min]: The minimum width constraint (defaults to 0)
  /// * [max]: The maximum width constraint (defaults to [double.infinity])
  ///
  /// Example:
  /// ```dart
  /// Text('This text will be between 100 and 300 pixels wide')
  ///   .constrainedWidth(min: 100, max: 300)
  /// ```
  ///
  /// See also:
  /// * [constrainedHeight], for height-only constraints
  /// * [minWidth] and [maxWidth], for single-bound width constraints
  ConstrainedBox constrainedWidth(
          {double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minWidth: min,
          maxWidth: max,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with height-only constraints.
  ///
  /// This method is useful when you only need to constrain the height
  /// of a widget while leaving width unconstrained.
  ///
  /// Parameters:
  /// * [min]: The minimum height constraint (defaults to 0)
  /// * [max]: The maximum height constraint (defaults to [double.infinity])
  ///
  /// Example:
  /// ```dart
  /// Column(children: [...])
  ///   .constrainedHeight(min: 200, max: 400)
  /// ```
  ///
  /// See also:
  /// * [constrainedWidth], for width-only constraints
  /// * [minHeight] and [maxHeight], for single-bound height constraints
  ConstrainedBox constrainedHeight(
          {double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minHeight: min,
          maxHeight: max,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with a minimum width constraint.
  ///
  /// This method ensures the widget will be at least [minWidth] pixels wide,
  /// but allows it to grow wider if needed.
  ///
  /// Parameters:
  /// * [minWidth]: The minimum width in logical pixels
  ///
  /// Example:
  /// ```dart
  /// Text('Short')
  ///   .minWidth(100) // Ensures the text area is at least 100px wide
  /// ```
  ///
  /// See also:
  /// * [maxWidth], for maximum width constraints
  /// * [constrainedWidth], for both min and max width constraints
  ConstrainedBox minWidth(double minWidth) => constrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with a maximum width constraint.
  ///
  /// This method ensures the widget will be at most [maxWidth] pixels wide,
  /// preventing it from growing beyond this limit.
  ///
  /// Parameters:
  /// * [maxWidth]: The maximum width in logical pixels
  ///
  /// Example:
  /// ```dart
  /// Text('This is a very long text that might overflow')
  ///   .maxWidth(200) // Limits the text width to 200px
  /// ```
  ///
  /// See also:
  /// * [minWidth], for minimum width constraints
  /// * [constrainedWidth], for both min and max width constraints
  ConstrainedBox maxWidth(double maxWidth) => constrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with a minimum height constraint.
  ///
  /// This method ensures the widget will be at least [minHeight] pixels tall,
  /// but allows it to grow taller if needed.
  ///
  /// Parameters:
  /// * [minHeight]: The minimum height in logical pixels
  ///
  /// Example:
  /// ```dart
  /// Container(color: Colors.red)
  ///   .minHeight(100) // Ensures the container is at least 100px tall
  /// ```
  ///
  /// See also:
  /// * [maxHeight], for maximum height constraints
  /// * [constrainedHeight], for both min and max height constraints
  ConstrainedBox minHeight(double minHeight) => constrainedBox(
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
      );

  /// Wraps this widget in a [ConstrainedBox] with a maximum height constraint.
  ///
  /// This method ensures the widget will be at most [maxHeight] pixels tall,
  /// preventing it from growing beyond this limit.
  ///
  /// Parameters:
  /// * [maxHeight]: The maximum height in logical pixels
  ///
  /// Example:
  /// ```dart
  /// ListView(children: [...])
  ///   .maxHeight(300) // Limits the list view height to 300px
  /// ```
  ///
  /// See also:
  /// * [minHeight], for minimum height constraints
  /// * [constrainedHeight], for both min and max height constraints
  ConstrainedBox maxHeight(double maxHeight) => constrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
      );
}
