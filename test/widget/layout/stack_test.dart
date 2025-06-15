import 'package:exui/src/widget/layout/stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StackWidgetListExtension', () {
    final redBox = Container(color: Colors.red, width: 100, height: 100);
    final blueBox = Container(color: Colors.blue, width: 50, height: 50);
    final widgets = [redBox, blueBox];

    testWidgets('stack() builds correct Stack', (tester) async {
      final stack = widgets.stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.expand,
        clipBehavior: Clip.antiAlias,
      );

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.rtl,
        child: Material(child: stack),
      ));

      final stackFinder = find.byType(Stack);
      expect(stackFinder, findsOneWidget);

      final stackWidget = tester.widget<Stack>(stackFinder);
      expect(stackWidget.alignment, Alignment.center);
      expect(stackWidget.textDirection, TextDirection.rtl);
      expect(stackWidget.fit, StackFit.expand);
      expect(stackWidget.clipBehavior, Clip.antiAlias);
      expect(stackWidget.children.length, 2);
    });

    testWidgets('stackPassthrough() uses StackFit.passthrough', (tester) async {
      final stack = widgets.stackPassthrough();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.passthrough);
    });

    testWidgets('stackExpand() uses StackFit.expand', (tester) async {
      final stack = widgets.stackExpand();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.expand);
    });

    testWidgets('stackLoose() uses StackFit.loose', (tester) async {
      final stack = widgets.stackLoose();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.loose);
    });
  });

  group('StackWidgetExtension', () {
    final redBox = Container(color: Colors.red, width: 100, height: 100);

    testWidgets('stack() wraps in Stack with 1 child', (tester) async {
      final stack = redBox.stack();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.children.length, 1);
    });

    testWidgets('stackPassthrough() uses StackFit.passthrough', (tester) async {
      final stack = redBox.stackPassthrough();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.passthrough);
    });

    testWidgets('stackExpand() uses StackFit.expand', (tester) async {
      final stack = redBox.stackExpand();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.expand);
    });

    testWidgets('stackLoose() uses StackFit.loose', (tester) async {
      final stack = redBox.stackLoose();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: stack),
      ));
      final stackWidget = tester.widget<Stack>(find.byType(Stack));
      expect(stackWidget.fit, StackFit.loose);
    });
  });
}
