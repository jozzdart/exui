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

  Widget get fitContain => boxFit(fit: BoxFit.contain);

  Widget get fitCover => boxFit(fit: BoxFit.cover);

  Widget get fitFill => boxFit(fit: BoxFit.fill);

  Widget get fitNone => boxFit(fit: BoxFit.none);

  Widget get fitScaleDown => boxFit(fit: BoxFit.scaleDown);

  Widget get fitWidth => boxFit(fit: BoxFit.fitWidth);

  Widget get fitHeight => boxFit(fit: BoxFit.fitHeight);
}
