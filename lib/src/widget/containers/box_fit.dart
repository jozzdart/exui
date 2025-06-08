import 'package:flutter/widgets.dart';

extension BoxFitWidgetExtensions on Widget {
  FittedBox fittedBox({
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      FittedBox(
        fit: fit,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );

  FittedBox fitContain({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.contain,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  FittedBox fitCover({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.cover,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  FittedBox fitFill({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.fill,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  FittedBox fitScaleDown({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.scaleDown,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  FittedBox fitHeight({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.fitHeight,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );
}
