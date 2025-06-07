import 'package:flutter/widgets.dart';

extension CenterWidgetExtension on Widget {
  Center center({
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Center centerWidth(double? widthFactor) => center(widthFactor: widthFactor);

  Center centerHeight(double? heightFactor) =>
      center(heightFactor: heightFactor);
}
