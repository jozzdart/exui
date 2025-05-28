import 'package:flutter/widgets.dart';

extension DecoratedBoxWidgetExtension on Widget {
  Widget inDecoratedBox({
    required BoxDecoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  Widget inImageBox(
    DecorationImage image,
  ) =>
      inDecoratedBox(
        decoration: BoxDecoration(
          image: image,
        ),
      );

  Widget inGradientBox(
    Gradient gradient,
  ) =>
      inDecoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
      );

  Widget inShadowedBox(
    BoxShadow boxShadow,
  ) =>
      inDecoratedBox(
        decoration: BoxDecoration(
          boxShadow: [boxShadow],
        ),
      );

  Widget inBorderedBox({
    required BoxBorder border,
    BorderRadiusGeometry? borderRadius,
  }) =>
      inDecoratedBox(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
        ),
      );

  Widget inShapedBox(
    BoxShape shape,
  ) =>
      inDecoratedBox(
        decoration: BoxDecoration(shape: shape),
      );

  Widget inCircularBorderBox({
    required double radius,
    required Color color,
    required double width,
  }) =>
      inBorderedBox(
        border: Border.all(
          color: color,
          width: width,
        ),
        borderRadius: BorderRadius.circular(radius),
      );
}
