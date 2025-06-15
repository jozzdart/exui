import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ClipRectWidgetExtensions', () {
    testWidgets('clipRRect wraps with ClipRRect and applies border radius',
        (WidgetTester tester) async {
      const key = Key('test_widget');
      const radius = BorderRadius.all(Radius.circular(10));

      final widget = Container(key: key).clipRRect(borderRadius: radius);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: widget),
      ));

      final clipRRect = tester.widget<ClipRRect>(find.byType(ClipRRect));
      expect(clipRRect.borderRadius, equals(radius));
      expect(clipRRect.clipBehavior, Clip.antiAlias);
      expect(clipRRect.child?.key, equals(key));
    });

    testWidgets('clipCircular applies uniform circular border radius',
        (WidgetTester tester) async {
      const key = Key('test_widget');
      const radius = 25.0;

      final widget = Container(key: key).clipCircular(radius);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: widget),
      ));

      final clipRRect = tester.widget<ClipRRect>(find.byType(ClipRRect));
      expect(clipRRect.borderRadius, BorderRadius.circular(radius));
      expect(clipRRect.clipBehavior, Clip.antiAlias);
      expect(clipRRect.child?.key, equals(key));
    });

    testWidgets('clipCircular default radius is 12',
        (WidgetTester tester) async {
      final widget = const SizedBox().clipCircular();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: widget),
      ));

      final clipRRect = tester.widget<ClipRRect>(find.byType(ClipRRect));
      expect(clipRRect.borderRadius, BorderRadius.circular(12));
    });

    testWidgets('clipOval wraps with ClipOval and applies clipBehavior',
        (WidgetTester tester) async {
      const key = Key('test_widget');

      final widget = Container(key: key).clipOval(clipBehavior: Clip.hardEdge);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: widget),
      ));

      final clipOval = tester.widget<ClipOval>(find.byType(ClipOval));
      expect(clipOval.clipBehavior, Clip.hardEdge);
      expect(clipOval.child?.key, equals(key));
    });

    testWidgets('clipCircle is an alias for clipOval',
        (WidgetTester tester) async {
      const key = Key('test_widget');

      final widget = Container(key: key).clipCircle();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: Material(child: widget),
      ));

      final clipOval = tester.widget<ClipOval>(find.byType(ClipOval));
      expect(clipOval.clipBehavior, Clip.antiAlias);
      expect(clipOval.child?.key, equals(key));
    });
  });
}
