import 'package:exui/exui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  group('BoxFitWidgetExtensions', () {
    final widget = const Text('Test');

    testWidgets('fittedBox default', (tester) async {
      final testWidget = widget.fittedBox();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBoxFinder = find.byType(FittedBox);
      final textFinder = find.byType(Text);
      expect(fittedBoxFinder, findsOneWidget);
      expect(textFinder, findsOneWidget);

      final fittedBox = tester.widget<FittedBox>(fittedBoxFinder);
      expect(fittedBox.fit, BoxFit.contain);
      expect(fittedBox.alignment, Alignment.center);
      expect(fittedBox.clipBehavior, Clip.none);
    });

    testWidgets('fitContain works as expected', (tester) async {
      final testWidget = widget.fitContain();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBox = tester.widget<FittedBox>(find.byType(FittedBox));
      expect(fittedBox.fit, BoxFit.contain);
      expect(fittedBox.alignment, Alignment.center);
    });

    testWidgets('fitCover works as expected', (tester) async {
      final testWidget = widget.fitCover(
          alignment: Alignment.bottomRight, clipBehavior: Clip.hardEdge);
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBox = tester.widget<FittedBox>(find.byType(FittedBox));
      expect(fittedBox.fit, BoxFit.cover);
      expect(fittedBox.alignment, Alignment.bottomRight);
      expect(fittedBox.clipBehavior, Clip.hardEdge);
    });

    testWidgets('fitFill works as expected', (tester) async {
      final testWidget = widget.fitFill(alignment: Alignment.topLeft);
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBox = tester.widget<FittedBox>(find.byType(FittedBox));
      expect(fittedBox.fit, BoxFit.fill);
      expect(fittedBox.alignment, Alignment.topLeft);
    });

    testWidgets('fitScaleDown works as expected', (tester) async {
      final testWidget = widget.fitScaleDown();
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBox = tester.widget<FittedBox>(find.byType(FittedBox));
      expect(fittedBox.fit, BoxFit.scaleDown);
    });

    testWidgets('fitHeight works as expected', (tester) async {
      final testWidget = widget.fitHeight(clipBehavior: Clip.antiAlias);
      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: testWidget,
      ));

      final fittedBox = tester.widget<FittedBox>(find.byType(FittedBox));
      expect(fittedBox.fit, BoxFit.fitHeight);
      expect(fittedBox.clipBehavior, Clip.antiAlias);
    });
  });
}
