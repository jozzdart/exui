import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IconDataExtension', () {
    const IconData testIconData = Icons.star;

    testWidgets('icon() creates Icon with all parameters',
        (WidgetTester tester) async {
      final icon = testIconData.icon(
        size: 32,
        fill: 0.8,
        weight: 300,
        grade: 0.5,
        opticalSize: 24,
        color: Colors.blue,
        shadows: [Shadow(color: Colors.black, blurRadius: 4)],
        semanticLabel: 'Test icon',
        textDirection: TextDirection.ltr,
        applyTextScaling: false,
        blendMode: BlendMode.srcOver,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: icon),
        ),
      );

      final iconWidget = tester.widget<Icon>(find.byType(Icon));
      expect(iconWidget.icon, testIconData);
      expect(iconWidget.size, 32);
      expect(iconWidget.fill, 0.8);
      expect(iconWidget.weight, 300);
      expect(iconWidget.grade, 0.5);
      expect(iconWidget.opticalSize, 24);
      expect(iconWidget.color, Colors.blue);
      expect(iconWidget.shadows, isNotNull);
      expect(iconWidget.semanticLabel, 'Test icon');
      expect(iconWidget.textDirection, TextDirection.ltr);
      expect(iconWidget.applyTextScaling, false);
      expect(iconWidget.blendMode, BlendMode.srcOver);
    });

    testWidgets('iconSized() creates Icon with specified size',
        (WidgetTester tester) async {
      const double testSize = 40;
      final icon = testIconData.iconSized(testSize);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: icon),
        ),
      );

      final iconWidget = tester.widget<Icon>(find.byType(Icon));
      expect(iconWidget.size, testSize);
      expect(iconWidget.icon, testIconData);
    });

    testWidgets('iconFilled() creates Icon with specified fill value',
        (WidgetTester tester) async {
      const double fillValue = 0.3;
      final icon = testIconData.iconFilled(fillValue);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: icon),
        ),
      );

      final iconWidget = tester.widget<Icon>(find.byType(Icon));
      expect(iconWidget.fill, fillValue);
      expect(iconWidget.icon, testIconData);
    });

    testWidgets('iconColored() creates Icon with specified color',
        (WidgetTester tester) async {
      const Color color = Colors.red;
      final icon = testIconData.iconColored(color);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: icon),
        ),
      );

      final iconWidget = tester.widget<Icon>(find.byType(Icon));
      expect(iconWidget.color, color);
      expect(iconWidget.icon, testIconData);
    });
  });
}
