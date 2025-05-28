import 'package:flutter/widgets.dart';

extension IntrinsicWidthWidgetExtensions on Widget {
  Widget get intrinsicHeight => IntrinsicHeight(child: this);

  Widget get intrinsicWidth => intrinsicWidthWith();

  Widget intrinsicWidthWith({
    double? stepWidth,
    double? stepHeight,
  }) =>
      IntrinsicWidth(
        stepWidth: stepWidth,
        stepHeight: stepHeight,
        child: this,
      );
}
