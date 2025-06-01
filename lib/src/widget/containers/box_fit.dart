import 'package:flutter/widgets.dart';

extension BoxFitWidgetExtensions on Widget {
  Widget fittedBox({
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

  Widget fitContain() => fittedBox(fit: BoxFit.contain);

  Widget fitCover() => fittedBox(fit: BoxFit.cover);

  Widget fitFill() => fittedBox(fit: BoxFit.fill);

  Widget fitNone() => fittedBox(fit: BoxFit.none);

  Widget fitScaleDown() => fittedBox(fit: BoxFit.scaleDown);

  Widget fitWidth() => fittedBox(fit: BoxFit.fitWidth);

  Widget fitHeight() => fittedBox(fit: BoxFit.fitHeight);
}
