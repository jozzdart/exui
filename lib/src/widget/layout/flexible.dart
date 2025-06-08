import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient flexible layout functionality.
///
/// This extension adds methods to easily wrap widgets in [Flexible] widgets for
/// flexible layout control within [Row], [Column], and [Flex] widgets. All methods
/// return new [Flexible] widgets without modifying the original widget.
///
/// The extension provides both flexible control (flex) and convenient shortcuts
/// for common flex values (flex2, flex3, etc.) with different [FlexFit] options.
///
/// Unlike [Expanded], [Flexible] widgets can occupy less than the available space
/// if their child doesn't need it all, depending on the [FlexFit] setting:
/// - [FlexFit.loose]: Child can be smaller than the allocated space
/// - [FlexFit.tight]: Child must fill the allocated space (like [Expanded])
///
/// Example usage:
/// ```dart
/// Row(
///   children: [
///     Text('Flexible').flex(),           // Takes needed space, up to 1 part
///     Text('Tight').flexTight(2),        // Forces 2 parts of space
///     Text('Loose').flexLoose(1),        // Up to 1 part, but can be smaller
///   ],
/// );
/// ```
extension FlexibleWidgetExtension on Widget {
  /// Wraps the widget in a [Flexible] with the specified flex value and fit.
  ///
  /// Creates a [Flexible] widget that allows the child to occupy available
  /// space along the main axis of its parent [Row], [Column], or [Flex].
  /// The flex value determines the proportion of space this widget can occupy
  /// relative to other [Flexible] or [Expanded] widgets in the same parent.
  ///
  /// Parameters:
  /// - [flex]: The flex factor to use. Higher values can take more space.
  ///   Defaults to 1. Must be >= 0.
  /// - [fit]: How the child should fit within the allocated space.
  ///   - [FlexFit.loose]: Child can be smaller than allocated space (default)
  ///   - [FlexFit.tight]: Child must fill allocated space
  ///
  /// Returns a [Flexible] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Loose fit').flex(flex: 1, fit: FlexFit.loose),
  ///     Text('Tight fit').flex(flex: 2, fit: FlexFit.tight),
  ///   ],
  /// );
  /// ```
  Flexible flex({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        flex: flex,
        fit: fit,
        child: this,
      );

  /// Wraps the widget in a [Flexible] with flex value 2.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 2, fit: fit)`.
  /// Takes up to twice as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 2.
  Flexible flex2([FlexFit fit = FlexFit.loose]) => flex(flex: 2, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 3.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 3, fit: fit)`.
  /// Takes up to three times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 3.
  Flexible flex3([FlexFit fit = FlexFit.loose]) => flex(flex: 3, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 4.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 4, fit: fit)`.
  /// Takes up to four times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 4.
  Flexible flex4([FlexFit fit = FlexFit.loose]) => flex(flex: 4, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 5.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 5, fit: fit)`.
  /// Takes up to five times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 5.
  Flexible flex5([FlexFit fit = FlexFit.loose]) => flex(flex: 5, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 6.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 6, fit: fit)`.
  /// Takes up to six times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 6.
  Flexible flex6([FlexFit fit = FlexFit.loose]) => flex(flex: 6, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 7.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 7, fit: fit)`.
  /// Takes up to seven times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 7.
  Flexible flex7([FlexFit fit = FlexFit.loose]) => flex(flex: 7, fit: fit);

  /// Wraps the widget in a [Flexible] with flex value 8.
  ///
  /// This is a convenience method equivalent to calling `flex(flex: 8, fit: fit)`.
  /// Takes up to eight times as much space as widgets with flex value 1.
  ///
  /// Parameters:
  /// - [fit]: How the child should fit within the allocated space.
  ///   Defaults to [FlexFit.loose].
  ///
  /// Returns a [Flexible] widget with flex value 8.
  Flexible flex8([FlexFit fit = FlexFit.loose]) => flex(flex: 8, fit: fit);

  /// Wraps the widget in a [Flexible] with loose fit.
  ///
  /// This is a convenience method that creates a [Flexible] with [FlexFit.loose],
  /// allowing the child to be smaller than the allocated space if it doesn't need it all.
  ///
  /// Parameters:
  /// - [flex]: The flex factor to use. Must be >= 0.
  ///
  /// Returns a [Flexible] widget with loose fit.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Short').flexLoose(2),  // Can be smaller than 2/3 of space
  ///     Text('Long text content').flexLoose(1),
  ///   ],
  /// );
  /// ```
  Flexible flexLoose(int flex) => this.flex(flex: flex, fit: FlexFit.loose);

  /// Wraps the widget in a [Flexible] with tight fit.
  ///
  /// This is a convenience method that creates a [Flexible] with [FlexFit.tight],
  /// forcing the child to fill the allocated space. This behaves similarly to [Expanded].
  ///
  /// Parameters:
  /// - [flex]: The flex factor to use. Must be >= 0.
  ///
  /// Returns a [Flexible] widget with tight fit.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Fills space').flexTight(1),  // Must fill 1/3 of space
  ///     Text('Also fills').flexTight(2),   // Must fill 2/3 of space
  ///   ],
  /// );
  /// ```
  Flexible flexTight(int flex) => this.flex(flex: flex, fit: FlexFit.tight);
}
