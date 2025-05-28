import 'package:flutter/widgets.dart';

extension MarginWidgetExtension on Widget {
  Widget margin(EdgeInsets margin) => Container(
        margin: margin,
        child: this,
      );

  Widget marginAll(double margin) => this.margin(EdgeInsets.all(margin));

  Widget marginOnly({
    double? top,
    double? left,
    double? right,
    double? bottom,
  }) =>
      margin(EdgeInsets.only(
        top: top ?? 0,
        left: left ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
      ));

  Widget marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      margin(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  Widget marginHorizontal(double horizontal) =>
      marginSymmetric(horizontal: horizontal);

  Widget marginVertical(double vertical) => marginSymmetric(vertical: vertical);

  Widget marginTop(double top) => marginOnly(top: top);

  Widget marginLeft(double left) => marginOnly(left: left);

  Widget marginRight(double right) => marginOnly(right: right);

  Widget marginBottom(double bottom) => marginOnly(bottom: bottom);
}
