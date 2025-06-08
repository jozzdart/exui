import 'package:flutter/widgets.dart';

/// Extension methods for [Text] widgets that provide convenient text modification functionality.
///
/// This extension adds methods to easily modify existing [Text] widgets by creating new
/// instances with updated properties. All methods return new [Text] widgets without
/// modifying the original widget, following Flutter's immutable widget pattern.
///
/// The extension provides both granular control (individual property setters) and
/// comprehensive styling (styled method) for text appearance and behavior modification.
///
/// **Text Properties Supported:**
/// - **Layout**: textAlign, textDirection, maxLines, overflow, softWrap
/// - **Styling**: fontSize, fontWeight, fontStyle, color, decoration
/// - **Advanced**: strutStyle, textScaler, semanticsLabel, heightBehavior
/// - **Typography**: letterSpacing, wordSpacing, height, fontFamily
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .fontSize(18)
///   .bold()
///   .textAlign(TextAlign.center)
///   .maxLines(2);
/// ```
extension TextExtensions on Text {
  /// Internal helper method to create a copy of the text with modified properties.
  ///
  /// This method handles the creation of new [Text] instances with updated properties
  /// while preserving existing properties that aren't being modified.
  Text _copyWith({
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
    Key? key,
  }) {
    return Text(
      data ?? '',
      key: key,
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

  /// Sets the text alignment for the text widget.
  ///
  /// Creates a new [Text] widget with the specified text alignment.
  /// This controls how the text is aligned horizontally within its container.
  ///
  /// Parameters:
  /// - [align]: The text alignment to apply.
  ///
  /// Returns a new [Text] widget with the specified alignment.
  ///
  /// Example:
  /// ```dart
  /// Text('Centered text').textAlign(TextAlign.center);
  /// Text('Right aligned').textAlign(TextAlign.right);
  /// ```
  Text textAlign(TextAlign align) => _copyWith(textAlign: align);

  /// Sets the text direction for the text widget.
  ///
  /// Creates a new [Text] widget with the specified text direction.
  /// This is useful for right-to-left languages or when you need to
  /// override the default text direction.
  ///
  /// Parameters:
  /// - [direction]: The text direction to apply.
  ///
  /// Returns a new [Text] widget with the specified text direction.
  ///
  /// Example:
  /// ```dart
  /// Text('RTL text').textDirection(TextDirection.rtl);
  /// Text('LTR text').textDirection(TextDirection.ltr);
  /// ```
  Text textDirection(TextDirection direction) =>
      _copyWith(textDirection: direction);

  /// Sets the locale for the text widget.
  ///
  /// Creates a new [Text] widget with the specified locale.
  /// This affects how the text is rendered and can influence
  /// font selection and text shaping.
  ///
  /// Parameters:
  /// - [locale]: The locale to apply.
  ///
  /// Returns a new [Text] widget with the specified locale.
  ///
  /// Example:
  /// ```dart
  /// Text('Localized text').locale(Locale('es', 'ES'));
  /// ```
  Text locale(Locale locale) => _copyWith(locale: locale);

  /// Sets whether the text should wrap at soft line breaks.
  ///
  /// Creates a new [Text] widget with the specified soft wrap behavior.
  /// When true, text will wrap to new lines at appropriate break points.
  /// When false, text will not wrap and may overflow.
  ///
  /// Parameters:
  /// - [softWrap]: Whether to enable soft wrapping.
  ///
  /// Returns a new [Text] widget with the specified soft wrap behavior.
  ///
  /// Example:
  /// ```dart
  /// Text('Long text that should wrap').softWrap(true);
  /// Text('No wrapping allowed').softWrap(false);
  /// ```
  Text softWrap(bool softWrap) => _copyWith(softWrap: softWrap);

  /// Sets how text overflow should be handled.
  ///
  /// Creates a new [Text] widget with the specified overflow behavior.
  /// This determines what happens when text doesn't fit in the available space.
  ///
  /// Parameters:
  /// - [overflow]: The overflow behavior to apply.
  ///
  /// Returns a new [Text] widget with the specified overflow behavior.
  ///
  /// Example:
  /// ```dart
  /// Text('Text that might overflow').overflow(TextOverflow.ellipsis);
  /// Text('Fading overflow').overflow(TextOverflow.fade);
  /// ```
  Text overflow(TextOverflow overflow) => _copyWith(overflow: overflow);

  /// Sets the maximum number of lines for the text.
  ///
  /// Creates a new [Text] widget with the specified maximum line count.
  /// Text will be truncated or wrapped according to the overflow setting
  /// if it exceeds this number of lines.
  ///
  /// Parameters:
  /// - [maxLines]: The maximum number of lines to display.
  ///
  /// Returns a new [Text] widget with the specified maximum lines.
  ///
  /// Example:
  /// ```dart
  /// Text('Multi-line text content').maxLines(3);
  /// Text('Single line only').maxLines(1);
  /// ```
  Text maxLines(int maxLines) => _copyWith(maxLines: maxLines);

  /// Sets the semantic label for accessibility.
  ///
  /// Creates a new [Text] widget with the specified semantic label.
  /// This provides alternative text for screen readers and other
  /// accessibility tools.
  ///
  /// Parameters:
  /// - [semanticsLabel]: The semantic label to apply.
  ///
  /// Returns a new [Text] widget with the specified semantic label.
  ///
  /// Example:
  /// ```dart
  /// Text('👍').semanticsLabel('Thumbs up emoji');
  /// ```
  Text semanticsLabel(String semanticsLabel) =>
      _copyWith(semanticsLabel: semanticsLabel);

  /// Sets the text width basis for measuring text width.
  ///
  /// Creates a new [Text] widget with the specified width basis.
  /// This affects how the text's width is calculated for layout purposes.
  ///
  /// Parameters:
  /// - [basis]: The text width basis to apply.
  ///
  /// Returns a new [Text] widget with the specified width basis.
  Text widthBasis(TextWidthBasis basis) => _copyWith(textWidthBasis: basis);

  /// Sets the text height behavior for line height calculation.
  ///
  /// Creates a new [Text] widget with the specified height behavior.
  /// This controls how line height is calculated and applied.
  ///
  /// Parameters:
  /// - [behavior]: The text height behavior to apply.
  ///
  /// Returns a new [Text] widget with the specified height behavior.
  Text heightBehavior(TextHeightBehavior behavior) =>
      _copyWith(textHeightBehavior: behavior);

  /// Sets the selection color for selectable text.
  ///
  /// Creates a new [Text] widget with the specified selection color.
  /// This color is used to highlight selected text portions.
  ///
  /// Parameters:
  /// - [color]: The selection color to apply.
  ///
  /// Returns a new [Text] widget with the specified selection color.
  Text selectionColor(Color color) => _copyWith(selectionColor: color);

  /// Sets the strut style for the text.
  ///
  /// Creates a new [Text] widget with the specified strut style.
  /// Strut style defines the minimum line height and baseline alignment.
  ///
  /// Parameters:
  /// - [style]: The strut style to apply.
  ///
  /// Returns a new [Text] widget with the specified strut style.
  Text strutStyle(StrutStyle style) => _copyWith(strutStyle: style);

  /// Sets the text scaler for the text.
  ///
  /// Creates a new [Text] widget with the specified text scaler.
  /// This controls how text scales based on user accessibility settings.
  ///
  /// Parameters:
  /// - [scaler]: The text scaler to apply.
  ///
  /// Returns a new [Text] widget with the specified text scaler.
  Text textScaler(TextScaler scaler) => _copyWith(textScaler: scaler);

  /// Applies comprehensive styling to the text widget.
  ///
  /// Creates a new [Text] widget with a modified [TextStyle] that includes
  /// the specified styling properties. This method provides access to all
  /// [TextStyle] properties in a single call.
  ///
  /// **Style Parameters:**
  /// - [color]: Text color
  /// - [backgroundColor]: Background color behind the text
  /// - [fontSize]: Size of the font
  /// - [fontWeight]: Weight/boldness of the font
  /// - [fontStyle]: Style of the font (normal, italic)
  /// - [letterSpacing]: Spacing between letters
  /// - [wordSpacing]: Spacing between words
  /// - [textBaseline]: Baseline for text alignment
  /// - [height]: Line height multiplier
  /// - [decoration]: Text decoration (underline, strikethrough, etc.)
  /// - [decorationColor]: Color of text decoration
  /// - [decorationStyle]: Style of text decoration
  /// - [decorationThickness]: Thickness of text decoration
  /// - [fontFamily]: Font family name
  /// - [fontFamilyFallback]: Fallback font families
  /// - [shadows]: List of shadows to cast behind text
  /// - [fontFeatures]: List of font features to enable
  /// - [fontVariations]: List of font variations to apply
  ///
  /// Returns a new [Text] widget with the specified styling applied.
  ///
  /// Example:
  /// ```dart
  /// Text('Styled text').styled(
  ///   color: Colors.blue,
  ///   fontSize: 18,
  ///   fontWeight: FontWeight.bold,
  ///   decoration: TextDecoration.underline,
  /// );
  /// ```
  Text styled({
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
    Locale? locale,
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
    String? package,
    TextOverflow? overflow,
    bool? inherit,
  }) {
    return _copyWith(
      style: style?.copyWith(
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
        overflow: overflow,
        inherit: inherit,
      ),
    );
  }

  /// Sets the font size for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontSize: size)`.
  ///
  /// Parameters:
  /// - [size]: The font size in logical pixels.
  ///
  /// Returns a new [Text] widget with the specified font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Large text').fontSize(24);
  /// Text('Small text').fontSize(12);
  /// ```
  Text fontSize(double size) => styled(fontSize: size);

  /// Sets the font weight for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontWeight: weight)`.
  ///
  /// Parameters:
  /// - [weight]: The font weight to apply.
  ///
  /// Returns a new [Text] widget with the specified font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Bold text').fontWeight(FontWeight.bold);
  /// Text('Light text').fontWeight(FontWeight.w300);
  /// ```
  Text fontWeight(FontWeight weight) => styled(fontWeight: weight);

  /// Sets the font style for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontStyle: style)`.
  ///
  /// Parameters:
  /// - [style]: The font style to apply.
  ///
  /// Returns a new [Text] widget with the specified font style.
  ///
  /// Example:
  /// ```dart
  /// Text('Italic text').fontStyle(FontStyle.italic);
  /// Text('Normal text').fontStyle(FontStyle.normal);
  /// ```
  Text fontStyle(FontStyle style) => styled(fontStyle: style);

  /// Sets the letter spacing for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(letterSpacing: spacing)`.
  ///
  /// Parameters:
  /// - [spacing]: The letter spacing in logical pixels.
  ///
  /// Returns a new [Text] widget with the specified letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Spaced text').letterSpacing(2.0);
  /// Text('Tight text').letterSpacing(-0.5);
  /// ```
  Text letterSpacing(double spacing) => styled(letterSpacing: spacing);

  /// Sets the word spacing for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(wordSpacing: spacing)`.
  ///
  /// Parameters:
  /// - [spacing]: The word spacing in logical pixels.
  ///
  /// Returns a new [Text] widget with the specified word spacing.
  Text wordSpacing(double spacing) => styled(wordSpacing: spacing);

  /// Sets the line height multiplier for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(height: height)`.
  ///
  /// Parameters:
  /// - [height]: The line height multiplier.
  ///
  /// Returns a new [Text] widget with the specified line height.
  Text height(double height) => styled(height: height);

  /// Sets the foreground paint for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(foreground: paint)`.
  Text foreground(Paint paint) => styled(foreground: paint);

  /// Sets the background paint for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(background: paint)`.
  Text background(Paint paint) => styled(background: paint);

  /// Sets the shadows for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(shadows: shadows)`.
  Text shadows(List<Shadow> shadows) => styled(shadows: shadows);

  /// Sets the font features for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontFeatures: features)`.
  Text fontFeatures(List<FontFeature> features) =>
      styled(fontFeatures: features);

  /// Sets the font variations for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontVariations: variations)`.
  Text fontVariations(List<FontVariation> variations) =>
      styled(fontVariations: variations);

  /// Sets the text decoration for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decoration: decoration)`.
  Text decoration(TextDecoration decoration) => styled(decoration: decoration);

  /// Sets the decoration color for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decorationColor: color)`.
  Text decorationColor(Color color) => styled(decorationColor: color);

  /// Sets the decoration style for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decorationStyle: style)`.
  Text decorationStyle(TextDecorationStyle style) =>
      styled(decorationStyle: style);

  /// Sets the decoration thickness for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decorationThickness: thickness)`.
  Text decorationThickness(double thickness) =>
      styled(decorationThickness: thickness);

  /// Sets the debug label for the text style.
  ///
  /// This is a convenience method equivalent to calling `styled(debugLabel: label)`.
  Text debugLabel(String label) => styled(debugLabel: label);

  /// Sets the font family for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontFamily: family)`.
  Text fontFamily(String family) => styled(fontFamily: family);

  /// Sets the fallback font families for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(fontFamilyFallback: fallback)`.
  Text fontFamilyFallback(List<String> fallback) =>
      styled(fontFamilyFallback: fallback);

  /// Sets the leading distribution for the text.
  ///
  /// This is a convenience method equivalent to calling `styled(leadingDistribution: distribution)`.
  Text leadingDistribution(TextLeadingDistribution distribution) =>
      styled(leadingDistribution: distribution);

  /// Makes the text bold.
  ///
  /// This is a convenience method equivalent to calling `styled(fontWeight: FontWeight.bold)`.
  ///
  /// Returns a new [Text] widget with bold font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Bold text').bold();
  /// ```
  Text bold() => styled(fontWeight: FontWeight.bold);

  /// Makes the text italic.
  ///
  /// This is a convenience method equivalent to calling `styled(fontStyle: FontStyle.italic)`.
  ///
  /// Returns a new [Text] widget with italic font style.
  ///
  /// Example:
  /// ```dart
  /// Text('Italic text').italic();
  /// ```
  Text italic() => styled(fontStyle: FontStyle.italic);

  /// Adds underline decoration to the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decoration: TextDecoration.underline)`.
  ///
  /// Returns a new [Text] widget with underline decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Underlined text').underline();
  /// ```
  Text underline() => styled(decoration: TextDecoration.underline);

  /// Adds strikethrough decoration to the text.
  ///
  /// This is a convenience method equivalent to calling `styled(decoration: TextDecoration.lineThrough)`.
  ///
  /// Returns a new [Text] widget with strikethrough decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Strikethrough text').strikethrough();
  /// ```
  Text strikethrough() => styled(decoration: TextDecoration.lineThrough);

  /// Makes the text bold and italic.
  ///
  /// This is a convenience method that combines bold font weight and italic font style.
  ///
  /// Returns a new [Text] widget with bold and italic styling.
  ///
  /// Example:
  /// ```dart
  /// Text('Bold italic text').boldItalic();
  /// ```
  Text boldItalic() =>
      styled(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

  /// Makes the text bold and underlined.
  ///
  /// This is a convenience method that combines bold font weight and underline decoration.
  ///
  /// Returns a new [Text] widget with bold and underlined styling.
  ///
  /// Example:
  /// ```dart
  /// Text('Bold underlined text').boldUnderline();
  /// ```
  Text boldUnderline() =>
      styled(fontWeight: FontWeight.bold, decoration: TextDecoration.underline);

  /// Makes the text bold with strikethrough.
  ///
  /// This is a convenience method that combines bold font weight and strikethrough decoration.
  ///
  /// Returns a new [Text] widget with bold and strikethrough styling.
  ///
  /// Example:
  /// ```dart
  /// Text('Bold strikethrough text').boldStrikethrough();
  /// ```
  Text boldStrikethrough() => styled(
      fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough);
}
