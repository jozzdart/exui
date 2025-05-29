import 'package:flutter/widgets.dart';

extension ClipPathWidgetExtensions on Widget {
  Widget clipPath({
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
