import 'package:flutter/widgets.dart';

extension BoxFitWidgetExtensions on Widget {
  Widget boxFit({
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

  Widget fitContain() => boxFit(fit: BoxFit.contain);

  Widget fitCover() => boxFit(fit: BoxFit.cover);

  Widget fitFill() => boxFit(fit: BoxFit.fill);

  Widget fitNone() => boxFit(fit: BoxFit.none);

  Widget fitScaleDown() => boxFit(fit: BoxFit.scaleDown);

  Widget fitWidth() => boxFit(fit: BoxFit.fitWidth);

  Widget fitHeight() => boxFit(fit: BoxFit.fitHeight);
}
