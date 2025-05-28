import 'package:flutter/widgets.dart';

extension ExpandedWidgetExtension on Widget {
  Widget expandedFlex({
    int flex = 1,
  }) =>
      Expanded(
        flex: flex,
        child: this,
      );

  Widget get expanded => expandedFlex();

  Widget get expanded2 => expandedFlex(flex: 2);

  Widget get expanded3 => expandedFlex(flex: 3);

  Widget get expanded4 => expandedFlex(flex: 4);

  Widget get expanded5 => expandedFlex(flex: 5);

  Widget get expanded6 => expandedFlex(flex: 6);

  Widget get expanded7 => expandedFlex(flex: 7);

  Widget get expanded8 => expandedFlex(flex: 8);
}
