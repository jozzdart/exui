import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BottomNavigationItemIconExtension', () {
    testWidgets('creates BottomNavigationBarItem with required label only',
        (tester) async {
      const icon = Icon(Icons.home);
      const label = 'Home';

      final item = icon.bottomNavigationItem(label);

      expect(item.icon, equals(icon));
      expect(item.label, equals(label));
      // Instead of checking for null, ensure it defaults to the icon
      expect(item.activeIcon, equals(icon));
      expect(item.backgroundColor, isNull);
      expect(item.tooltip, isNull);
    });

    testWidgets('creates BottomNavigationBarItem with all parameters',
        (tester) async {
      const icon = Icon(Icons.favorite_border);
      const active = Icon(Icons.favorite);
      const label = 'Favorites';
      const bgColor = Colors.red;
      const tip = 'View favorites';

      final item = icon.bottomNavigationItem(
        label,
        activeIcon: active,
        backgroundColor: bgColor,
        tooltip: tip,
      );

      expect(item.icon, equals(icon));
      expect(item.label, equals(label));
      expect(item.activeIcon, equals(active));
      expect(item.backgroundColor, equals(bgColor));
      expect(item.tooltip, equals(tip));
    });

    testWidgets('allows only some optional params like activeIcon',
        (tester) async {
      const icon = Icon(Icons.settings);
      const label = 'Settings';
      const active = Icon(Icons.settings_suggest);

      final item = icon.bottomNavigationItem(
        label,
        activeIcon: active,
      );

      expect(item.icon, equals(icon));
      expect(item.label, equals(label));
      expect(item.activeIcon, equals(active));
      expect(item.backgroundColor, isNull);
      expect(item.tooltip, isNull);
    });
  });
}
