import 'package:flutter/widgets.dart';

extension DecoratedBoxWidgetExtension on Widget {
  DecoratedBox decoratedBox({
    required BoxDecoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  DecoratedBox imageBox(
    DecorationImage image,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          image: image,
        ),
      );

  DecoratedBox gradientBox(
    Gradient gradient,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
      );

  DecoratedBox shadowedBox(
    BoxShadow boxShadow,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(
          boxShadow: [boxShadow],
        ),
      );

  DecoratedBox borderedBox({
    required BoxBorder border,
    BorderRadiusGeometry? borderRadius,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
        ),
      );

  DecoratedBox shapedBox(
    BoxShape shape,
  ) =>
      decoratedBox(
        decoration: BoxDecoration(shape: shape),
      );

  DecoratedBox circularBorderBox({
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
