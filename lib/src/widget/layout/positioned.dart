import 'package:flutter/widgets.dart';

extension PositionedWidgetExtensions on Widget {
  Positioned positioned({
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

  Positioned positionedTop(double top) => positioned(top: top);

  Positioned positionedLeft(double left) => positioned(left: left);

  Positioned positionedRight(double right) => positioned(right: right);

  Positioned positionedBottom(double bottom) => positioned(bottom: bottom);

  Positioned positionedWidth(double width) => positioned(width: width);

  Positioned positionedHeight(double height) => positioned(height: height);
}
