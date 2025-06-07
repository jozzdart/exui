import 'package:flutter/widgets.dart';

extension PaddingExtensions on Widget {
  Padding padding(EdgeInsets padding) => Padding(padding: padding, child: this);

  Padding paddingAll(double padding) => this.padding(EdgeInsets.all(padding));

  Padding paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) =>
      padding(
        EdgeInsets.only(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
        ),
      );

  Padding paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      padding(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  Padding paddingHorizontal(double horizontal) =>
      paddingSymmetric(horizontal: horizontal);

  Padding paddingVertical(double vertical) =>
      paddingSymmetric(vertical: vertical);

  Padding paddingLeft(double left) => paddingOnly(left: left);

  Padding paddingRight(double right) => paddingOnly(right: right);

  Padding paddingTop(double top) => paddingOnly(top: top);

  Padding paddingBottom(double bottom) => paddingOnly(bottom: bottom);
}
