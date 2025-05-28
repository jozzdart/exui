import 'package:flutter/widgets.dart';

extension OpacityWidgetExtension on Widget {
  Widget opacity(double opacity, {bool alwaysIncludeSemantics = false}) =>
      Opacity(
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );
}
