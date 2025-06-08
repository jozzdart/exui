import 'package:flutter/widgets.dart';

/// Extension methods for [String] that provide convenient text widget creation.
///
/// This extension adds methods to easily convert strings into [Text] widgets
/// with various styling options. It provides both basic text creation and
/// comprehensive styling in a single method call.
///
/// The extension offers two main approaches:
/// - [text]: Basic text widget creation with standard Text parameters
/// - [styledText]: Comprehensive styling with TextStyle parameters inline
///
/// Example usage:
/// ```dart
/// 'Hello World'.text(style: TextStyle(fontSize: 16))
/// 'Styled Text'.styledText(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold)
/// ```
extension StringTextExtensions on String {
  /// Converts the string to a [Text] widget with optional styling.
  ///
  /// Creates a [Text] widget using this string as the content. This method
  /// provides access to all standard [Text] widget parameters for comprehensive
  /// text display control.
  ///
  /// Parameters:
  /// - [style]: The [TextStyle] to apply to the text.
  /// - [strutStyle]: The strut style to use for the text.
  /// - [textAlign]: How to align the text horizontally.
  /// - [textDirection]: The directionality of the text.
  /// - [locale]: The locale to use for text rendering.
  /// - [softWrap]: Whether the text should break at soft line breaks.
  /// - [overflow]: How to handle text overflow.
  /// - [textScaler]: The text scaling factor.
  /// - [maxLines]: Maximum number of lines for the text to span.
  /// - [semanticsLabel]: Alternative text for accessibility.
  /// - [textWidthBasis]: How to measure the width of the text.
  /// - [textHeightBehavior]: How to handle text height.
  /// - [selectionColor]: Color of text selection highlights.
  ///
  /// Returns a [Text] widget displaying this string.
  ///
  /// Example:
  /// ```dart
  /// 'Welcome to the app'
  ///   .text(
  ///     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ///     textAlign: TextAlign.center,
  ///     maxLines: 2,
  ///     overflow: TextOverflow.ellipsis,
  ///   );
  /// ```
  Text text({
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
  }) {
    return Text(
      this,
      style: style,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaler: textScaler,
    );
  }

  /// Converts the string to a styled [Text] widget with inline styling options.
  ///
  /// Creates a [Text] widget with a [TextStyle] built from the provided parameters.
  /// This method combines text styling and text widget creation in a single call,
  /// making it convenient for quick text styling without creating separate TextStyle objects.
  ///
  /// This method provides access to all [TextStyle] properties as direct parameters,
  /// plus all [Text] widget parameters for complete control over text appearance and behavior.
  ///
  /// Text Style Parameters:
  /// - [color]: The color of the text.
  /// - [backgroundColor]: The background color of the text.
  /// - [fontSize]: The size of the font.
  /// - [fontWeight]: The weight of the font (bold, normal, etc.).
  /// - [fontStyle]: The style of the font (italic, normal).
  /// - [letterSpacing]: Spacing between letters.
  /// - [wordSpacing]: Spacing between words.
  /// - [textBaseline]: The baseline for text alignment.
  /// - [height]: The line height multiplier.
  /// - [leadingDistribution]: How to distribute leading space.
  /// - [foreground]: Paint for the text foreground.
  /// - [background]: Paint for the text background.
  /// - [shadows]: List of shadows to cast behind the text.
  /// - [fontFeatures]: List of font features to enable.
  /// - [fontVariations]: List of font variations to apply.
  /// - [decoration]: Text decoration (underline, strikethrough, etc.).
  /// - [decorationColor]: Color of the text decoration.
  /// - [decorationStyle]: Style of the text decoration.
  /// - [decorationThickness]: Thickness of the text decoration.
  /// - [debugLabel]: Debug label for the text style.
  /// - [fontFamily]: The font family to use.
  /// - [fontFamilyFallback]: Fallback font families.
  /// - [inherit]: Whether to inherit parent text style.
  /// - [package]: Package containing the font.
  ///
  /// Text Widget Parameters:
  /// - [strutStyle]: The strut style to use.
  /// - [textAlign]: How to align the text horizontally.
  /// - [textDirection]: The directionality of the text.
  /// - [locale]: The locale to use for text rendering.
  /// - [softWrap]: Whether the text should break at soft line breaks.
  /// - [overflow]: How to handle text overflow.
  /// - [textScaler]: The text scaling factor.
  /// - [maxLines]: Maximum number of lines for the text to span.
  /// - [semanticsLabel]: Alternative text for accessibility.
  /// - [textWidthBasis]: How to measure the width of the text.
  /// - [textHeightBehavior]: How to handle text height.
  /// - [selectionColor]: Color of text selection highlights.
  ///
  /// Returns a [Text] widget with the specified styling applied.
  ///
  /// Example:
  /// ```dart
  /// 'Important Notice'
  ///   .styledText(
  ///     color: Colors.red,
  ///     fontSize: 18,
  ///     fontWeight: FontWeight.bold,
  ///     decoration: TextDecoration.underline,
  ///     textAlign: TextAlign.center,
  ///   );
  ///
  /// 'Subtitle text'
  ///   .styledText(
  ///     color: Colors.grey[600],
  ///     fontSize: 14,
  ///     fontStyle: FontStyle.italic,
  ///     maxLines: 2,
  ///     overflow: TextOverflow.fade,
  ///   );
  /// ```
  Text styledText({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    TextScaler? textScaler,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
    Color? selectionColor,
    bool inherit = true,
    String? package,
  }) {
    return Text(
      this,
      style: TextStyle(
        color: color,
        backgroundColor: backgroundColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        package: package,
        inherit: inherit,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
      strutStyle: strutStyle,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      textScaler: textScaler,
    );
  }
}
