import 'package:flutter/widgets.dart';

/// Extension methods for [Icon] that provide convenient icon modification functionality.
///
/// This extension adds methods to easily modify existing [Icon] widgets by creating
/// new instances with updated properties. All methods return new [Icon] widgets
/// without modifying the original icon.
///
/// The extension provides convenient methods for common icon modifications like
/// sizing, coloring, adding shadows, and adjusting various visual properties.
///
/// Example usage:
/// ```dart
/// Icon(Icons.star)
///   .sized(24)
///   .colored(Colors.blue)
///   .shadowed([Shadow(color: Colors.black26, blurRadius: 2)]);
/// ```
extension IconExtension on Icon {
  /// Creates a copy of the icon with modified properties.
  ///
  /// This is an internal helper method that creates a new [Icon] instance
  /// with the specified properties while preserving unmodified properties
  /// from the original icon.
  ///
  /// Parameters:
  /// - [size]: The size of the icon.
  /// - [fill]: The fill value for the icon (0.0 to 1.0).
  /// - [weight]: The weight of the icon strokes.
  /// - [grade]: The grade of the icon (affects thickness).
  /// - [opticalSize]: The optical size for the icon.
  /// - [color]: The color of the icon.
  /// - [shadows]: List of shadows to cast behind the icon.
  /// - [semanticLabel]: Semantic label for accessibility.
  /// - [textDirection]: Text direction for the icon.
  /// - [applyTextScaling]: Whether to apply text scaling.
  /// - [blendMode]: Blend mode for the icon.
  /// - [key]: Widget key for the new icon.
  ///
  /// Returns a new [Icon] with the specified modifications.
  Icon _copyWith({
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
    Key? key,
  }) =>
      Icon(
        icon,
        key: key ?? this.key,
        size: size ?? this.size,
        fill: fill ?? this.fill,
        weight: weight ?? this.weight,
        grade: grade ?? this.grade,
        opticalSize: opticalSize ?? this.opticalSize,
        color: color ?? this.color,
        shadows: shadows ?? this.shadows,
        semanticLabel: semanticLabel ?? this.semanticLabel,
        textDirection: textDirection ?? this.textDirection,
        applyTextScaling: applyTextScaling ?? this.applyTextScaling,
        blendMode: blendMode ?? this.blendMode,
      );

  /// Creates a copy of the icon with a specific size.
  ///
  /// Modifies the icon's size while preserving all other properties.
  /// The size determines both the width and height of the icon.
  ///
  /// Parameters:
  /// - [size]: The new size for the icon in logical pixels.
  ///
  /// Returns a new [Icon] with the specified size.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.home).sized(32); // 32x32 pixel icon
  /// ```
  Icon withSize(double size) => _copyWith(size: size);

  /// Creates a copy of the icon with a specific fill value.
  ///
  /// The fill value controls how much of the icon is filled, typically
  /// used with variable fonts that support fill variations.
  ///
  /// Parameters:
  /// - [fill]: The fill value (0.0 to 1.0, where 1.0 is completely filled).
  ///
  /// Returns a new [Icon] with the specified fill value.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.star).filled(0.5); // Half-filled star
  /// ```
  Icon withFill(double fill) => _copyWith(fill: fill);

  /// Creates a copy of the icon with a specific weight.
  ///
  /// The weight controls the thickness of the icon's strokes,
  /// typically used with variable fonts that support weight variations.
  ///
  /// Parameters:
  /// - [weight]: The weight value for the icon strokes.
  ///
  /// Returns a new [Icon] with the specified weight.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.search).weight(700); // Bold search icon
  /// ```
  Icon withWeight(double weight) => _copyWith(weight: weight);

  /// Creates a copy of the icon with a specific grade.
  ///
  /// The grade affects the overall thickness and visual weight of the icon,
  /// typically used with variable fonts that support grade variations.
  ///
  /// Parameters:
  /// - [grade]: The grade value for the icon.
  ///
  /// Returns a new [Icon] with the specified grade.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.favorite).grade(200); // Higher grade favorite icon
  /// ```
  Icon withGrade(double grade) => _copyWith(grade: grade);

  /// Creates a copy of the icon with a specific optical size.
  ///
  /// The optical size is used to optimize the icon's appearance at different
  /// sizes, typically used with variable fonts that support optical sizing.
  ///
  /// Parameters:
  /// - [opticalSize]: The optical size value for the icon.
  ///
  /// Returns a new [Icon] with the specified optical size.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.text_fields).opticalSize(48); // Optimized for 48px display
  /// ```
  Icon withOpticalSize(double opticalSize) =>
      _copyWith(opticalSize: opticalSize);

  /// Creates a copy of the icon with a specific color.
  ///
  /// Changes the color of the icon while preserving all other properties.
  ///
  /// Parameters:
  /// - [color]: The new color for the icon.
  ///
  /// Returns a new [Icon] with the specified color.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.warning).colored(Colors.red); // Red warning icon
  /// ```
  Icon withColor(Color color) => _copyWith(color: color);

  /// Creates a copy of the icon with specific shadows.
  ///
  /// Adds shadow effects to the icon for depth and visual emphasis.
  ///
  /// Parameters:
  /// - [shadows]: List of [Shadow] objects to apply to the icon.
  ///
  /// Returns a new [Icon] with the specified shadows.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.star).shadowed([
  ///   Shadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2))
  /// ]);
  /// ```
  Icon withShadows(List<Shadow> shadows) => _copyWith(shadows: shadows);

  /// Creates a copy of the icon with a specific semantic label.
  ///
  /// Sets the semantic label for accessibility purposes. This label is used
  /// by screen readers and other assistive technologies.
  ///
  /// Parameters:
  /// - [semanticLabel]: The semantic label for accessibility.
  ///
  /// Returns a new [Icon] with the specified semantic label.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.delete).semanticLabeled('Delete item');
  /// ```
  Icon withSemanticLabel(String semanticLabel) =>
      _copyWith(semanticLabel: semanticLabel);

  /// Creates a copy of the icon with a specific text direction.
  ///
  /// Sets the text direction for the icon, which can affect how directional
  /// icons are displayed (e.g., arrow icons in RTL layouts).
  ///
  /// Parameters:
  /// - [textDirection]: The text direction for the icon.
  ///
  /// Returns a new [Icon] with the specified text direction.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.arrow_forward).textDirectioned(TextDirection.rtl);
  /// ```
  Icon withTextDirection(TextDirection textDirection) =>
      _copyWith(textDirection: textDirection);

  /// Creates a copy of the icon with text scaling applied or disabled.
  ///
  /// Controls whether the icon should scale with the system's text scaling
  /// settings for accessibility.
  ///
  /// Parameters:
  /// - [applyTextScaling]: Whether to apply text scaling to the icon.
  ///
  /// Returns a new [Icon] with the specified text scaling behavior.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.settings).applyTextScaling(false); // Fixed size regardless of text scaling
  /// ```
  Icon withApplyTextScaling(bool applyTextScaling) =>
      _copyWith(applyTextScaling: applyTextScaling);

  /// Creates a copy of the icon with a specific blend mode.
  ///
  /// Sets the blend mode for how the icon should be composited with its
  /// background or other elements.
  ///
  /// Parameters:
  /// - [blendMode]: The blend mode for the icon.
  ///
  /// Returns a new [Icon] with the specified blend mode.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.overlay).blendMode(BlendMode.multiply);
  /// ```
  Icon withBlendMode(BlendMode blendMode) => _copyWith(blendMode: blendMode);
}
