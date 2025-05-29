import 'package:flutter/widgets.dart';

extension DecoratedBoxWidgetExtension on Widget {
  Widget decoratedBox({
    required BoxDecoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  Widget imageBox(
    DecorationImage image,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          image: image,
        ),
      );

  Widget gradientBox(
    Gradient gradient,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
      );

  Widget shadowedBox(
    BoxShadow boxShadow,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          boxShadow: [boxShadow],
        ),
      );

  Widget borderedBox({
    required BoxBorder border,
    BorderRadiusGeometry? borderRadius,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
        ),
      );

  Widget shapedBox(
    BoxShape shape,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(shape: shape),
      );

  Widget circularBorderBox({
    required double radius,
    required Color color,
    required double width,
  }) =>
      borderedBox(
        border: Border.all(
          color: color,
          width: width,
        ),
        borderRadius: BorderRadius.circular(radius),
      );
}
