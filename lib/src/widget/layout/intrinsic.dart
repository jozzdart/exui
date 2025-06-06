import 'package:flutter/widgets.dart';

extension IntrinsicWidthWidgetExtensions on Widget {
  Widget intrinsicHeight() => IntrinsicHeight(child: this);

  Widget intrinsicWidth() => intrinsicWidthWith();

  Widget intrinsicWidthWith({
    double? stepWidth,
    double? stepHeight,
  }) =>
      IntrinsicWidth(
        stepWidth: stepWidth,
        stepHeight: stepHeight,
        child: this,
      );

  Widget intrinsicWidthStepHeight(double stepHeight) =>
      intrinsicWidthWith(stepHeight: stepHeight);

  Widget intrinsicWidthStepWidth(double stepWidth) =>
      intrinsicWidthWith(stepWidth: stepWidth);
}
