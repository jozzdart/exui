import 'package:flutter/widgets.dart';

extension HeroWidgetExtension on Widget {
  Widget hero(String tag) => Hero(tag: tag, child: this);
}
