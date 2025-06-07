import 'package:flutter/widgets.dart';

extension AlignedWidgetExtension on Widget {
  Align align({
    AlignmentGeometry alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) =>
      Align(
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Align alignCenter({
    double? widthFactor,
    double? heightFactor,
  }) =>
      align(
        alignment: Alignment.center,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignCenterLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.centerLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignCenterRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.centerRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignTopCenter(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topCenter,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignTopLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignTopRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.topRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignBottomLeft(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomLeft,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignBottomCenter(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomCenter,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  Align alignBottomRight(
    double? widthFactor,
    double? heightFactor,
  ) =>
      align(
        alignment: Alignment.bottomRight,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );
}
