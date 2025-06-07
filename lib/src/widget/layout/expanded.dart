import 'package:flutter/widgets.dart';

extension ExpandedWidgetExtension on Widget {
  Expanded expandedFlex([int flex = 1]) => Expanded(
        flex: flex,
        child: this,
      );

  Expanded get expanded => expandedFlex();

  Expanded get expanded2 => expandedFlex(2);

  Expanded get expanded3 => expandedFlex(3);

  Expanded get expanded4 => expandedFlex(4);

  Expanded get expanded5 => expandedFlex(5);

  Expanded get expanded6 => expandedFlex(6);

  Expanded get expanded7 => expandedFlex(7);

  Expanded get expanded8 => expandedFlex(8);
}
