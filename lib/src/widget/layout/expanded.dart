import 'package:flutter/widgets.dart';

extension ExpandedWidgetExtension on Widget {
  Widget expandedFlex([int flex = 1]) => Expanded(
        flex: flex,
        child: this,
      );

  Widget get expanded => expandedFlex();

  Widget get expanded2 => expandedFlex(2);

  Widget get expanded3 => expandedFlex(3);

  Widget get expanded4 => expandedFlex(4);

  Widget get expanded5 => expandedFlex(5);

  Widget get expanded6 => expandedFlex(6);

  Widget get expanded7 => expandedFlex(7);

  Widget get expanded8 => expandedFlex(8);
}
