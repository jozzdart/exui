import 'package:flutter/widgets.dart';

extension ColoredBoxExtension on Widget {
  ColoredBox coloredBox(
    Color color,
  ) =>
      ColoredBox(
        color: color,
        child: this,
      );
}
