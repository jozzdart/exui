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

  Widget get alignCenter => align(alignment: Alignment.center);

  Widget get alignCenterLeft => align(alignment: Alignment.centerLeft);

  Widget get alignCenterRight => align(alignment: Alignment.centerRight);

  Widget get alignTopCenter => align(alignment: Alignment.topCenter);

  Widget get alignTopLeft => align(alignment: Alignment.topLeft);

  Widget get alignTopRight => align(alignment: Alignment.topRight);

  Widget get alignBottomLeft => align(alignment: Alignment.bottomLeft);

  Widget get alignBottomCenter => align(alignment: Alignment.bottomCenter);

  Widget get alignBottomRight => align(alignment: Alignment.bottomRight);
}
