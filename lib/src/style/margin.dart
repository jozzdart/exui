import 'package:flutter/widgets.dart';

extension MarginWidgetExtension on Widget {
  Widget withMargin(EdgeInsets margin) => Container(
        margin: margin,
        child: this,
      );

  Widget withMarginAll(double margin) => withMargin(EdgeInsets.all(margin));

  Widget withMarginOnly({
    double? top,
    double? left,
    double? right,
    double? bottom,
  }) =>
      withMargin(EdgeInsets.only(
        top: top ?? 0,
        left: left ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      ));

  Widget withMarginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      withMargin(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  Widget withMarginHorizontal(double horizontal) =>
      withMarginSymmetric(horizontal: horizontal);

  Widget withMarginVertical(double vertical) =>
      withMarginSymmetric(vertical: vertical);

  Widget withMarginTop(double top) => withMarginOnly(top: top);

  Widget withMarginLeft(double left) => withMarginOnly(left: left);

  Widget withMarginRight(double right) => withMarginOnly(right: right);

  Widget withMarginBottom(double bottom) => withMarginOnly(bottom: bottom);
}
