import 'package:flutter/widgets.dart';

extension ClipPathWidgetExtensions on Widget {
  ClipPath clipPath({
    CustomClipper<Path>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipPath(
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }
}
