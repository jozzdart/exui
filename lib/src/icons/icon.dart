import 'package:flutter/widgets.dart';

extension IconExtension<T extends Icon> on T {
  T _copyWith({
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
      ) as T;

  T sized(double size) => _copyWith(size: size);

  T filled(double fill) => _copyWith(fill: fill);

  T weight(double weight) => _copyWith(weight: weight);

  T grade(double grade) => _copyWith(grade: grade);

  T opticalSize(double opticalSize) => _copyWith(opticalSize: opticalSize);

  T colored(Color color) => _copyWith(color: color);

  T shadowed(List<Shadow> shadows) => _copyWith(shadows: shadows);

  T semanticLabeled(String semanticLabel) =>
      _copyWith(semanticLabel: semanticLabel);

  T textDirectioned(TextDirection textDirection) =>
      _copyWith(textDirection: textDirection);

  T applyTextScaling(bool applyTextScaling) =>
      _copyWith(applyTextScaling: applyTextScaling);

  T blendMode(BlendMode blendMode) => _copyWith(blendMode: blendMode);
}
