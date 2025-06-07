import 'package:flutter/widgets.dart';

extension OpacityWidgetExtension on Widget {
  Opacity opacity(double opacity, {bool alwaysIncludeSemantics = false}) =>
      Opacity(
        opacity: opacity,
        alwaysIncludeSemantics: alwaysIncludeSemantics,
        child: this,
      );

  Opacity opacityPercent(double percent) => opacity(percent / 100);

  Opacity opacityHalf() => opacity(0.5);

  Opacity opacityQuarter() => opacity(0.25);

  Opacity opacityZero() => opacity(0);

  Opacity opacityTransparent() => opacityZero();

  Opacity opacityInvisible() => opacityZero();
}
