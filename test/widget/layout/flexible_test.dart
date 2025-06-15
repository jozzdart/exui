import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlexibleWidgetExtension', () {
    Widget buildTestWidget(Widget child) {
      return MaterialApp(
        home: Scaffold(
          body: Row(children: [child]),
        ),
      );
    }

    testWidgets('.flex() wraps widget with Flexible with default values',
        (tester) async {
      final widget = const Text('Test').flex();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 1);
      expect(flexible.fit, FlexFit.loose);
      expect(find.text('Test'), findsOneWidget);
    });

    testWidgets('.flex(flex: 3, fit: tight) applies correct values',
        (tester) async {
      final widget = const Text('Tight').flex(flex: 3, fit: FlexFit.tight);
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 3);
      expect(flexible.fit, FlexFit.tight);
    });

    testWidgets('.flex2() applies flex: 2 and default fit', (tester) async {
      final widget = const Text('Test').flex2();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 2);
      expect(flexible.fit, FlexFit.loose);
    });

    testWidgets('.flex3() applies flex: 3', (tester) async {
      final widget = const Text('Test').flex3();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 3);
    });

    testWidgets('.flex4() applies flex: 4', (tester) async {
      final widget = const Text('Test').flex4();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 4);
    });

    testWidgets('.flex5() applies flex: 5', (tester) async {
      final widget = const Text('Test').flex5();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 5);
    });

    testWidgets('.flex6() applies flex: 6', (tester) async {
      final widget = const Text('Test').flex6();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 6);
    });

    testWidgets('.flex7() applies flex: 7', (tester) async {
      final widget = const Text('Test').flex7();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 7);
    });

    testWidgets('.flex8() applies flex: 8', (tester) async {
      final widget = const Text('Test').flex8();
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 8);
    });

    testWidgets('.flexLoose() applies loose fit with correct flex',
        (tester) async {
      final widget = const Text('Loose').flexLoose(4);
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 4);
      expect(flexible.fit, FlexFit.loose);
    });

    testWidgets('.flexTight() applies tight fit with correct flex',
        (tester) async {
      final widget = const Text('Tight').flexTight(2);
      await tester.pumpWidget(buildTestWidget(widget));

      final flexible = tester.widget<Flexible>(find.byType(Flexible));
      expect(flexible.flex, 2);
      expect(flexible.fit, FlexFit.tight);
    });
  });
}
