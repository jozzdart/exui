import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IconExtension', () {
    const iconData = Icons.star;
    const baseIcon = Icon(iconData);

    test('sized sets correct size', () {
      final newIcon = baseIcon.withSize(48);
      expect(newIcon.size, 48);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('filled sets correct fill', () {
      final newIcon = baseIcon.withFill(0.8);
      expect(newIcon.fill, 0.8);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('weight sets correct weight', () {
      final newIcon = baseIcon.withWeight(600);
      expect(newIcon.weight, 600);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('grade sets correct grade', () {
      final newIcon = baseIcon.withGrade(200);
      expect(newIcon.grade, 200);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('opticalSize sets correct opticalSize', () {
      final newIcon = baseIcon.withOpticalSize(40);
      expect(newIcon.opticalSize, 40);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('colored sets correct color', () {
      final newIcon = baseIcon.withColor(Colors.purple);
      expect(newIcon.color, Colors.purple);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('shadowed sets correct shadows', () {
      final shadow =
          Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4);
      final newIcon = baseIcon.withShadows([shadow]);
      expect(newIcon.shadows, [shadow]);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('semanticLabeled sets correct label', () {
      final newIcon = baseIcon.withSemanticLabel('Star icon');
      expect(newIcon.semanticLabel, 'Star icon');
      expect(newIcon.icon, baseIcon.icon);
    });

    test('textDirectioned sets correct direction', () {
      final newIcon = baseIcon.withTextDirection(TextDirection.rtl);
      expect(newIcon.textDirection, TextDirection.rtl);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('applyTextScaling sets correct flag', () {
      final newIcon = baseIcon.withApplyTextScaling(false);
      expect(newIcon.applyTextScaling, false);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('blendMode sets correct mode', () {
      final newIcon = baseIcon.withBlendMode(BlendMode.multiply);
      expect(newIcon.blendMode, BlendMode.multiply);
      expect(newIcon.icon, baseIcon.icon);
    });

    test('chained extensions maintain latest values', () {
      final icon = baseIcon
          .withSize(30)
          .withColor(Colors.red)
          .withFill(1.0)
          .withGrade(100)
          .withWeight(400)
          .withOpticalSize(36)
          .withShadows([const Shadow(color: Colors.grey, blurRadius: 1)])
          .withSemanticLabel('Important icon')
          .withTextDirection(TextDirection.ltr)
          .withApplyTextScaling(true)
          .withBlendMode(BlendMode.darken);

      expect(icon.size, 30);
      expect(icon.color, Colors.red);
      expect(icon.fill, 1.0);
      expect(icon.grade, 100);
      expect(icon.weight, 400);
      expect(icon.opticalSize, 36);
      expect(icon.shadows?.first.color, Colors.grey);
      expect(icon.semanticLabel, 'Important icon');
      expect(icon.textDirection, TextDirection.ltr);
      expect(icon.applyTextScaling, true);
      expect(icon.blendMode, BlendMode.darken);
    });
  });
}
