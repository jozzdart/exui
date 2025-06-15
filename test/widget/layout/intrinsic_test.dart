import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IntrinsicWidthWidgetExtensions', () {
    testWidgets('intrinsicHeight wraps widget in IntrinsicHeight',
        (tester) async {
      final widget = Container(
        color: Colors.red,
        width: 50,
        height: 30,
      ).intrinsicHeight();

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Row(children: [widget]),
        ),
      );

      expect(find.byType(IntrinsicHeight), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('intrinsicWidth wraps widget in IntrinsicWidth (default)',
        (tester) async {
      final widget = Container(
        color: Colors.green,
        width: 50,
        height: 30,
      ).intrinsicWidth();

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: [widget]),
        ),
      );

      expect(find.byType(IntrinsicWidth), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('intrinsicWidthWith wraps with stepWidth and stepHeight',
        (tester) async {
      final widget = Container(
        color: Colors.blue,
        width: 50,
        height: 30,
      ).intrinsicWidthWith(stepWidth: 100, stepHeight: 40);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: [widget]),
        ),
      );

      final intrinsicFinder = find.byType(IntrinsicWidth);
      expect(intrinsicFinder, findsOneWidget);
      final intrinsic = tester.widget<IntrinsicWidth>(intrinsicFinder);
      expect(intrinsic.stepWidth, 100);
      expect(intrinsic.stepHeight, 40);
    });

    testWidgets('intrinsicWidthStepHeight uses only stepHeight',
        (tester) async {
      final widget = Container(
        color: Colors.orange,
        width: 50,
        height: 30,
      ).intrinsicWidthStepHeight(25);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: [widget]),
        ),
      );

      final intrinsicFinder = find.byType(IntrinsicWidth);
      expect(intrinsicFinder, findsOneWidget);
      final intrinsic = tester.widget<IntrinsicWidth>(intrinsicFinder);
      expect(intrinsic.stepHeight, 25);
      expect(intrinsic.stepWidth, isNull);
    });

    testWidgets('intrinsicWidthStepWidth uses only stepWidth', (tester) async {
      final widget = Container(
        color: Colors.purple,
        width: 50,
        height: 30,
      ).intrinsicWidthStepWidth(80);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(children: [widget]),
        ),
      );

      final intrinsicFinder = find.byType(IntrinsicWidth);
      expect(intrinsicFinder, findsOneWidget);
      final intrinsic = tester.widget<IntrinsicWidth>(intrinsicFinder);
      expect(intrinsic.stepWidth, 80);
      expect(intrinsic.stepHeight, isNull);
    });
  });
}
