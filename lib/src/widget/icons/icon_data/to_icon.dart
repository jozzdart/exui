import 'package:flutter/widgets.dart';

/// Extension methods for [IconData] that provide convenient icon creation functionality.
///
/// This extension adds methods to easily convert [IconData] objects into [Icon] widgets
/// with various styling and configuration options. All methods return new [Icon] widgets.
///
/// The extension provides both comprehensive control (icon) and convenient shortcuts
/// for common icon configurations (iconSized, iconFilled, iconColored).
///
/// Example usage:
/// ```dart
/// Icons.star
///   .icon(size: 24, color: Colors.yellow)
///   .iconSized(32)
///   .iconColored(Colors.blue);
/// ```
extension IconDataExtension on IconData {
  /// Converts the [IconData] to an [Icon] widget with optional styling.
  ///
  /// Creates an [Icon] widget using this [IconData] as the icon source.
  /// This method provides access to all [Icon] widget parameters for
  /// comprehensive icon styling and configuration.
  ///
  /// Parameters:
  /// - [size]: The size of the icon in logical pixels.
  /// - [fill]: The fill value for variable icons (0.0 to 1.0).
  /// - [weight]: The weight of the icon strokes for variable fonts.
  /// - [grade]: The grade of the icon for variable fonts.
  /// - [opticalSize]: The optical size for variable fonts.
  /// - [color]: The color of the icon.
  /// - [shadows]: List of shadows to cast behind the icon.
  /// - [semanticLabel]: Semantic label for accessibility.
  /// - [textDirection]: Text direction for directional icons.
  /// - [applyTextScaling]: Whether to apply system text scaling.
  /// - [blendMode]: Blend mode for compositing the icon.
  ///
  /// Returns an [Icon] widget displaying this icon data.
  ///
  /// Example:
  /// ```dart
  /// Icons.favorite.icon(
  ///   size: 32,
  ///   color: Colors.red,
  ///   semanticLabel: 'Favorite button',
  /// );
  ///
  /// Icons.star.icon(
  ///   fill: 0.5,
  ///   weight: 700,
  ///   shadows: [Shadow(color: Colors.black26, blurRadius: 2)],
  /// );
  /// ```
  Icon icon({
    double? size,
    double? fill,
    double? weight,
    double? grade,
    double? opticalSize,
    Color? color,
    List<Shadow>? shadows,
    String? semanticLabel,
    TextDirection? textDirection,
    bool? applyTextScaling,
    BlendMode? blendMode,
  }) =>
      Icon(
        this,
        size: size,
        fill: fill,
        weight: weight,
        grade: grade,
        opticalSize: opticalSize,
        color: color,
        shadows: shadows,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
        applyTextScaling: applyTextScaling,
        blendMode: blendMode,
      );

  /// Converts the [IconData] to an [Icon] widget with a specific size.
  ///
  /// This is a convenience method equivalent to calling `icon(size: size)`.
  /// Creates an icon with the specified size while using default values
  /// for all other properties.
  ///
  /// Parameters:
  /// - [size]: The size of the icon in logical pixels.
  ///
  /// Returns an [Icon] widget with the specified size.
  ///
  /// Example:
  /// ```dart
  /// Icons.home.iconSized(24);    // 24x24 pixel home icon
  /// Icons.search.iconSized(32);  // 32x32 pixel search icon
  /// ```
  Icon iconSized(double size) => icon(size: size);

  /// Converts the [IconData] to an [Icon] widget with a specific fill value.
  ///
  /// This is a convenience method equivalent to calling `icon(fill: fill)`.
  /// The fill value is useful for variable icons that support fill variations.
  ///
  /// Parameters:
  /// - [fill]: The fill value (0.0 to 1.0, where 1.0 is completely filled).
  ///
  /// Returns an [Icon] widget with the specified fill value.
  ///
  /// Example:
  /// ```dart
  /// Icons.star.iconFilled(0.5);     // Half-filled star
  /// Icons.favorite.iconFilled(1.0); // Completely filled heart
  /// ```
  Icon iconFilled(double fill) => icon(fill: fill);

  /// Converts the [IconData] to an [Icon] widget with a specific color.
  ///
  /// This is a convenience method equivalent to calling `icon(color: color)`.
  /// Creates a colored icon while using default values for all other properties.
  ///
  /// Parameters:
  /// - [color]: The color of the icon.
  ///
  /// Returns an [Icon] widget with the specified color.
  ///
  /// Example:
  /// ```dart
  /// Icons.warning.iconColored(Colors.red);    // Red warning icon
  /// Icons.check.iconColored(Colors.green);    // Green check icon
  /// Icons.info.iconColored(Colors.blue);      // Blue info icon
  /// ```
  Icon iconColored(Color color) => icon(color: color);
}
