import 'package:exui/src/material.dart';
import 'package:flutter/widgets.dart';

extension BottomNavigationItemIconExtension on Icon {
  BottomNavigationBarItem bottomNavigationItem(String label) =>
      BottomNavigationBarItem(
        icon: this,
        label: label,
      );
}

extension BottomNavigationItemIconDataExtension on IconData {
  BottomNavigationBarItem bottomNavigationItem(
    String label, {
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
      icon(
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
      ).bottomNavigationItem(label);
}
