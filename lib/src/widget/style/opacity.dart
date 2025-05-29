import 'package:flutter/widgets.dart';

extension OpacityWidgetExtension on Widget {
  Widget opacity(double opacity, {bool alwaysIncludeSemantics = false}) =>
      Opacity(
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  Widget opacityPercent(double percent) => opacity(percent / 100);

  Widget opacityHalf() => opacity(0.5);

  Widget opacityQuarter() => opacity(0.25);
}
