import 'package:flutter/widgets.dart';

extension MarginWidgetExtension on Widget {
  Container margin(EdgeInsets margin) => Container(
        margin: margin,
        child: this,
      );

  Container marginAll(double margin) => this.margin(EdgeInsets.all(margin));

  Container marginOnly({
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

  Container marginSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      margin(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  Container marginHorizontal(double horizontal) =>
      marginSymmetric(horizontal: horizontal);

  Container marginVertical(double vertical) =>
      marginSymmetric(vertical: vertical);

  Container marginTop(double top) => marginOnly(top: top);

  Container marginLeft(double left) => marginOnly(left: left);

  Container marginRight(double right) => marginOnly(right: right);

  Container marginBottom(double bottom) => marginOnly(bottom: bottom);
}
