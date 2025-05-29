import 'package:flutter/widgets.dart';

extension IconDataExtension on IconData {
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

  Icon iconSized(double size) => icon(size: size);

  Icon iconFilled(double fill) => icon(fill: fill);

  Icon iconColored(Color color) => icon(color: color);
}
