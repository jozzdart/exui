import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColoredBoxExtension', () {
    testWidgets('wraps widget in ColoredBox with specified color',
        (WidgetTester tester) async {
      const testKey = Key('test-widget');

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: const Text('Hello', key: testKey).coloredBox(Colors.red),
        ),
      );

      // Find the ColoredBox
      final coloredBoxFinder = find.byType(ColoredBox);
      expect(coloredBoxFinder, findsOneWidget);

      // Check its color
      final coloredBox = tester.widget<ColoredBox>(coloredBoxFinder);
      expect(coloredBox.color, Colors.red);

      // Check child
      final textFinder = find.byKey(testKey);
      expect(textFinder, findsOneWidget);
      expect(find.descendant(of: coloredBoxFinder, matching: textFinder),
          findsOneWidget);
    });

    testWidgets('works with different widgets', (WidgetTester tester) async {
      const testKey = Key('icon');

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: const Icon(Icons.star, key: testKey).coloredBox(Colors.green),
        ),
      );

      final coloredBox = tester.widget<ColoredBox>(find.byType(ColoredBox));
      expect(coloredBox.color, Colors.green);
      expect(find.byKey(testKey), findsOneWidget);
    });

    testWidgets('multiple nested coloredBox calls preserve hierarchy',
        (WidgetTester tester) async {
      const key = Key('text');

      final widget = const Text('Nested', key: key)
          .coloredBox(Colors.blue)
          .coloredBox(Colors.yellow);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final coloredBoxes =
          tester.widgetList<ColoredBox>(find.byType(ColoredBox)).toList();
      expect(coloredBoxes.length, 2);
      expect(coloredBoxes[0].color, Colors.yellow);
      expect(coloredBoxes[1].color, Colors.blue);

      expect(find.byKey(key), findsOneWidget);
    });
  });
}
