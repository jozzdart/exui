import 'package:flutter/widgets.dart';

extension ColoredBoxExtension on Widget {
  Widget coloredBox(
    Color color,
  ) =>
      ColoredBox(
        color: color,
        child: this,
      );
}
