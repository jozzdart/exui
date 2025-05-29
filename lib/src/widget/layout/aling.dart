import 'package:flutter/widgets.dart';

extension AlignedWidgetExtension on Widget {
  Widget align({
    Key? key,
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
    Widget? child,
  }) =>
      Align(
        key: key,
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Widget alignCenter() => align(alignment: Alignment.center);

  Widget alignCenterLeft() => align(alignment: Alignment.centerLeft);

  Widget alignCenterRight() => align(alignment: Alignment.centerRight);

  Widget alignTopCenter() => align(alignment: Alignment.topCenter);

  Widget alignTopLeft() => align(alignment: Alignment.topLeft);

  Widget alignTopRight() => align(alignment: Alignment.topRight);

  Widget alignBottomLeft() => align(alignment: Alignment.bottomLeft);

  Widget alignBottomCenter() => align(alignment: Alignment.bottomCenter);

  Widget alignBottomRight() => align(alignment: Alignment.bottomRight);
}
