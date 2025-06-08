import 'package:flutter/widgets.dart';

extension BottomNavigationItemIconExtension on Icon {
  BottomNavigationBarItem bottomNavigationItem(
    String label, {
    Widget? activeIcon,
    Color? backgroundColor,
    String? tooltip,
  }) =>
      BottomNavigationBarItem(
        icon: this,
        label: label,
        activeIcon: activeIcon,
        backgroundColor: backgroundColor,
        tooltip: tooltip,
      );
}
