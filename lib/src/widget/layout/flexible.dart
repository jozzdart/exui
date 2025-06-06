import 'package:flutter/widgets.dart';

extension FlexibleWidgetExtension on Widget {
  Widget flex({
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) =>
      Flexible(
        flex: flex,
        fit: fit,
        child: this,
      );

  Widget flex2([FlexFit fit = FlexFit.loose]) => flex(flex: 2, fit: fit);

  Widget flex3([FlexFit fit = FlexFit.loose]) => flex(flex: 3, fit: fit);

  Widget flex4([FlexFit fit = FlexFit.loose]) => flex(flex: 4, fit: fit);

  Widget flex5([FlexFit fit = FlexFit.loose]) => flex(flex: 5, fit: fit);

  Widget flex6([FlexFit fit = FlexFit.loose]) => flex(flex: 6, fit: fit);

  Widget flex7([FlexFit fit = FlexFit.loose]) => flex(flex: 7, fit: fit);

  Widget flex8([FlexFit fit = FlexFit.loose]) => flex(flex: 8, fit: fit);

  Widget flexLoose(int flex) => this.flex(flex: flex, fit: FlexFit.loose);

  Widget flexTight(int flex) => this.flex(flex: flex, fit: FlexFit.tight);
}
