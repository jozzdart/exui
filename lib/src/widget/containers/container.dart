import 'package:flutter/widgets.dart';

extension ContainerWidgetExtension on Widget {
  Container container({
    double? width,
    double? height,
    Color? color,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BoxDecoration? decoration,
    BoxConstraints? constraints,
    AlignmentGeometry? alignment,
    Clip clipBehavior = Clip.none,
  }) =>
      Container(
        width: width,
        height: height,
        color: color,
        padding: padding,
        margin: margin,
        decoration: decoration,
        constraints: constraints,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );
}
