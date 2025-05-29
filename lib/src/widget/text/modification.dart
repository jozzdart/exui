import 'package:flutter/widgets.dart';

extension TextExtensions on Text {
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

  Text textAlign(TextAlign align) => _copyWith(textAlign: align);

  Text textDirection(TextDirection direction) =>
      _copyWith(textDirection: direction);

  Text locale(Locale locale) => _copyWith(locale: locale);

  Text softWrap(bool softWrap) => _copyWith(softWrap: softWrap);

  Text overflow(TextOverflow overflow) => _copyWith(overflow: overflow);

  Text maxLines(int maxLines) => _copyWith(maxLines: maxLines);

  Text semanticsLabel(String semanticsLabel) =>
      _copyWith(semanticsLabel: semanticsLabel);

  Text widthBasis(TextWidthBasis basis) => _copyWith(textWidthBasis: basis);

  Text heightBehavior(TextHeightBehavior behavior) =>
      _copyWith(textHeightBehavior: behavior);

  Text selectionColor(Color color) => _copyWith(selectionColor: color);

  Text strutStyle(StrutStyle style) => _copyWith(strutStyle: style);

  Text textScaler(TextScaler scaler) => _copyWith(textScaler: scaler);

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

  Text fontSize(double size) => styled(fontSize: size);

  Text fontWeight(FontWeight weight) => styled(fontWeight: weight);

  Text fontStyle(FontStyle style) => styled(fontStyle: style);

  Text letterSpacing(double spacing) => styled(letterSpacing: spacing);

  Text wordSpacing(double spacing) => styled(wordSpacing: spacing);

  Text height(double height) => styled(height: height);

  Text foreground(Paint paint) => styled(foreground: paint);

  Text background(Paint paint) => styled(background: paint);

  Text shadows(List<Shadow> shadows) => styled(shadows: shadows);

  Text fontFeatures(List<FontFeature> features) =>
      styled(fontFeatures: features);

  Text fontVariations(List<FontVariation> variations) =>
      styled(fontVariations: variations);

  Text decoration(TextDecoration decoration) => styled(decoration: decoration);

  Text decorationColor(Color color) => styled(decorationColor: color);

  Text decorationStyle(TextDecorationStyle style) =>
      styled(decorationStyle: style);

  Text decorationThickness(double thickness) =>
      styled(decorationThickness: thickness);

  Text debugLabel(String label) => styled(debugLabel: label);

  Text fontFamily(String family) => styled(fontFamily: family);

  Text fontFamilyFallback(List<String> fallback) =>
      styled(fontFamilyFallback: fallback);

  Text leadingDistribution(TextLeadingDistribution distribution) =>
      styled(leadingDistribution: distribution);

  Text get bold => styled(fontWeight: FontWeight.bold);

  Text get italic => styled(fontStyle: FontStyle.italic);

  Text get underline => styled(decoration: TextDecoration.underline);

  Text get strikethrough => styled(decoration: TextDecoration.lineThrough);

  Text get boldItalic =>
      styled(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

  Text get boldUnderline =>
      styled(fontWeight: FontWeight.bold, decoration: TextDecoration.underline);

  Text get boldStrikethrough => styled(
      fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough);
}
