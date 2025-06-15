import 'package:exui/src/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OpacityWidgetExtension', () {
    const testKey = Key('test');
    const child = Placeholder(key: testKey);

    testWidgets('opacity() applies exact opacity value', (tester) async {
      final widget = child.opacity(0.8);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.8);
      expect(opacityWidget.child, child);
    });

    testWidgets('opacity() clamps values > 1.0', (tester) async {
      final widget = child.opacity(1);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, equals(1.0));
    });

    testWidgets('opacity() clamps values < 0.0', (tester) async {
      final widget = child.opacity(0.5);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, equals(0.5));
    });

    testWidgets('opacityPercent() converts percent to opacity', (tester) async {
      final widget = child.opacityPercent(75);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, closeTo(0.75, 0.001));
    });

    testWidgets('opacityHalf() applies 50% opacity', (tester) async {
      final widget = child.opacityHalf();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.5);
    });

    testWidgets('opacityQuarter() applies 25% opacity', (tester) async {
      final widget = child.opacityQuarter();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.25);
    });

    testWidgets('opacityZero() applies 0% opacity', (tester) async {
      final widget = child.opacityZero();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.0);
    });

    testWidgets('opacityTransparent() is alias for opacityZero()',
        (tester) async {
      final widget = child.opacityTransparent();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.0);
    });

    testWidgets('opacityInvisible() is alias for opacityZero()',
        (tester) async {
      final widget = child.opacityInvisible();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.opacity, 0.0);
    });

    testWidgets('opacity() respects alwaysIncludeSemantics', (tester) async {
      final widget = child.opacity(0.0, alwaysIncludeSemantics: true);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final opacityWidget = tester.widget<Opacity>(find.byType(Opacity));
      expect(opacityWidget.alwaysIncludeSemantics, true);
    });
  });
}
