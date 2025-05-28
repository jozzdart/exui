import 'package:flutter/widgets.dart';

extension PaddingExtensions on Widget {
  Widget padding(EdgeInsets padding) => Padding(padding: padding, child: this);

  Widget paddingAll(double padding) => this.padding(EdgeInsets.all(padding));

  Widget paddingOnly({
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

  Widget paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      padding(
        EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
      );

  Widget paddingHorizontal(double horizontal) =>
      paddingSymmetric(horizontal: horizontal);

  Widget paddingVertical(double vertical) =>
      paddingSymmetric(vertical: vertical);

  Widget paddingLeft(double left) => paddingOnly(left: left);

  Widget paddingRight(double right) => paddingOnly(right: right);

  Widget paddingTop(double top) => paddingOnly(top: top);

  Widget paddingBottom(double bottom) => paddingOnly(bottom: bottom);
}
