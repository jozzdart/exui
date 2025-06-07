import 'package:flutter/widgets.dart';

extension HeroWidgetExtension on Widget {
  Widget hero(
    String tag, {
    Tween<Rect?> Function(Rect?, Rect?)? createRectTween,
    Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
            BuildContext, BuildContext)?
        flightShuttleBuilder,
    Widget Function(BuildContext, Size, Widget)? placeholderBuilder,
    bool transitionOnUserGestures = false,
  }) =>
      Hero(
        tag: tag,
        createRectTween: createRectTween,
        flightShuttleBuilder: flightShuttleBuilder,
        placeholderBuilder: placeholderBuilder,
        transitionOnUserGestures: transitionOnUserGestures,
        child: this,
      );
}
