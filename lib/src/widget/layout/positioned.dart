import 'package:flutter/widgets.dart';

extension PositionedWidgetExtensions on Widget {
  Widget positioned({
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) =>
      Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this,
      );

  Widget positionedTop(double top) => positioned(top: top);

  Widget positionedLeft(double left) => positioned(left: left);

  Widget positionedRight(double right) => positioned(right: right);

  Widget positionedBottom(double bottom) => positioned(bottom: bottom);

  Widget positionedWidth(double width) => positioned(width: width);

  Widget positionedHeight(double height) => positioned(height: height);
}
