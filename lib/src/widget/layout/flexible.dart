import 'package:flutter/widgets.dart';

extension FlexibleWidgetExtension on Widget {
  Flexible flex({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        flex: flex,
        fit: fit,
        child: this,
      );

  Flexible flex2([FlexFit fit = FlexFit.loose]) => flex(flex: 2, fit: fit);

  Flexible flex3([FlexFit fit = FlexFit.loose]) => flex(flex: 3, fit: fit);

  Flexible flex4([FlexFit fit = FlexFit.loose]) => flex(flex: 4, fit: fit);

  Flexible flex5([FlexFit fit = FlexFit.loose]) => flex(flex: 5, fit: fit);

  Flexible flex6([FlexFit fit = FlexFit.loose]) => flex(flex: 6, fit: fit);

  Flexible flex7([FlexFit fit = FlexFit.loose]) => flex(flex: 7, fit: fit);

  Flexible flex8([FlexFit fit = FlexFit.loose]) => flex(flex: 8, fit: fit);

  Flexible flexLoose(int flex) => this.flex(flex: flex, fit: FlexFit.loose);

  Flexible flexTight(int flex) => this.flex(flex: flex, fit: FlexFit.tight);
}
