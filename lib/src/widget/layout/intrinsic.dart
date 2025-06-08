import 'package:flutter/widgets.dart';

extension IntrinsicWidthWidgetExtensions on Widget {
  IntrinsicHeight intrinsicHeight() => IntrinsicHeight(child: this);

  IntrinsicWidth intrinsicWidth() => intrinsicWidthWith();

  IntrinsicWidth intrinsicWidthWith({
    double? stepWidth,
    double? stepHeight,
  }) =>
      IntrinsicWidth(
        stepWidth: stepWidth,
        stepHeight: stepHeight,
        child: this,
      );

  IntrinsicWidth intrinsicWidthStepHeight(double stepHeight) =>
      intrinsicWidthWith(stepHeight: stepHeight);

  IntrinsicWidth intrinsicWidthStepWidth(double stepWidth) =>
      intrinsicWidthWith(stepWidth: stepWidth);
}
