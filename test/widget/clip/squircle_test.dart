import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SquircleWidgetExtensions', () {
    testWidgets(
        'clipSquircle wraps widget with ClipPath using ContinuousRectangleBorder',
        (WidgetTester tester) async {
      final widget =
          Container(width: 100, height: 100, color: Colors.blue).clipSquircle();

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final clipPathFinder = find.byType(ClipPath);
      expect(clipPathFinder, findsOneWidget);

      final clipPathWidget = tester.widget<ClipPath>(clipPathFinder);
      expect(clipPathWidget.clipBehavior, Clip.antiAlias);
      expect(clipPathWidget.clipper, isA<ShapeBorderClipper>());

      final shape = (clipPathWidget.clipper! as ShapeBorderClipper).shape;
      expect(shape, isA<ContinuousRectangleBorder>());
      final borderRadius = (shape as ContinuousRectangleBorder).borderRadius;
      expect(borderRadius, BorderRadius.all(Radius.circular(2.5)));
    });

    testWidgets('clipSquircle applies custom radiusFactor and clipBehavior',
        (WidgetTester tester) async {
      final widget = Container().clipSquircle(4.0, Clip.hardEdge);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
      expect(clipPath.clipBehavior, Clip.hardEdge);

      final shape = (clipPath.clipper! as ShapeBorderClipper).shape;
      final borderRadius = (shape as ContinuousRectangleBorder).borderRadius;
      expect(borderRadius, BorderRadius.all(Radius.circular(4.0)));
    });

    testWidgets('clipContinuousRectangle behaves identically to clipSquircle',
        (WidgetTester tester) async {
      final widget1 = Container().clipSquircle(3.0, Clip.none);
      final widget2 = Container().clipContinuousRectangle(3.0, Clip.none);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [widget1, widget2],
          ),
        ),
      );

      final clipPaths =
          tester.widgetList<ClipPath>(find.byType(ClipPath)).toList();
      expect(clipPaths.length, 2);

      for (final clipPath in clipPaths) {
        expect(clipPath.clipBehavior, Clip.none);
        final shape = (clipPath.clipper! as ShapeBorderClipper).shape;
        final borderRadius = (shape as ContinuousRectangleBorder).borderRadius;
        expect(borderRadius, BorderRadius.all(Radius.circular(3.0)));
      }
    });

    testWidgets('clipSquircle does not crash on small radius',
        (WidgetTester tester) async {
      final widget = Container().clipSquircle(0.1);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      expect(find.byType(ClipPath), findsOneWidget);
    });

    testWidgets('clipSquircle does not crash on high radius',
        (WidgetTester tester) async {
      final widget = Container().clipSquircle(100);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      expect(find.byType(ClipPath), findsOneWidget);
    });
  });
}
