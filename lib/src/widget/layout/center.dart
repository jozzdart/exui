import 'package:flutter/widgets.dart';

extension CenterWidgetExtension on Widget {
  Widget center({
    double? widthFactor,
    double? heightFactor,
  }) =>
      Center(
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: this,
      );

  Widget centerWidth({
    double? widthFactor,
  }) =>
      center(widthFactor: widthFactor);

  Widget centerHeight({
    double? heightFactor,
  }) =>
      center(heightFactor: heightFactor);
}
