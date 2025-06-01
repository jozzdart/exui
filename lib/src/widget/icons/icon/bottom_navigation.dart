import 'package:flutter/widgets.dart';

extension BottomNavigationItemIconExtension on Icon {
  BottomNavigationBarItem bottomNavigationItem(String label) =>
      BottomNavigationBarItem(
        icon: this,
        label: label,
      );
}
