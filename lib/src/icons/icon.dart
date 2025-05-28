import 'package:flutter/widgets.dart';

extension IconExtension on Icon {
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
        key: key,
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

  Icon sized(double size) => _copyWith(size: size);

  Icon filled(double fill) => _copyWith(fill: fill);

  Icon weight(double weight) => _copyWith(weight: weight);

  Icon grade(double grade) => _copyWith(grade: grade);

  Icon opticalSize(double opticalSize) => _copyWith(opticalSize: opticalSize);

  Icon colored(Color color) => _copyWith(color: color);

  Icon shadowed(List<Shadow> shadows) => _copyWith(shadows: shadows);

  Icon semanticLabeled(String semanticLabel) =>
      _copyWith(semanticLabel: semanticLabel);

  Icon textDirectioned(TextDirection textDirection) =>
      _copyWith(textDirection: textDirection);

  Icon applyTextScaling(bool applyTextScaling) =>
      _copyWith(applyTextScaling: applyTextScaling);

  Icon blendMode(BlendMode blendMode) => _copyWith(blendMode: blendMode);
}
