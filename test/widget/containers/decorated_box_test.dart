import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DecoratedBoxWidgetExtension', () {
    testWidgets('decoratedBox wraps widget with given decoration',
        (tester) async {
      final widget = const Text('Hello').decoratedBox(
        decoration: BoxDecoration(color: Colors.red),
      );
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      expect(box.decoration, isA<BoxDecoration>());
      expect((box.decoration as BoxDecoration).color, Colors.red);
    });

    testWidgets('decoratedBoxDecoration applies multiple decoration options',
        (tester) async {
      final widget = const Text('Hello').decoratedBoxDecoration(
        color: Colors.green,
        border:
            Border.fromBorderSide(BorderSide(color: Colors.black, width: 2)),
        borderRadius: BorderRadius.circular(8),
      );
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.color, Colors.green);
      expect(decoration.border?.top.color, Colors.black);
      expect(decoration.borderRadius, BorderRadius.circular(8));
    });

    testWidgets('gradientBox applies linear gradient', (tester) async {
      final gradient = LinearGradient(colors: [Colors.blue, Colors.red]);
      final widget =
          const SizedBox(width: 100, height: 100).gradientBox(gradient);
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.gradient, isA<LinearGradient>());
      expect((decoration.gradient as LinearGradient).colors,
          [Colors.blue, Colors.red]);
    });

    testWidgets('shadowedBox applies shadow correctly', (tester) async {
      final widget = const Text('Shadow').shadowedBox(
        color: Colors.black,
        offset: Offset(2, 4),
        blurRadius: 5,
        spreadRadius: 1,
      );
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final shadows = (box.decoration as BoxDecoration).boxShadow!;
      expect(shadows.length, 1);
      expect(shadows.first.color, Colors.black);
      expect(shadows.first.offset, const Offset(2, 4));
      expect(shadows.first.blurRadius, 5);
      expect(shadows.first.spreadRadius, 1);
    });

    testWidgets('borderedBox applies border and optional radius',
        (tester) async {
      final border = Border.all(color: Colors.orange, width: 3);
      final widget = const Text('Border').borderedBox(
        border: border,
        borderRadius: BorderRadius.circular(10),
      );
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.border, border);
      expect(decoration.borderRadius, BorderRadius.circular(10));
    });

    testWidgets('shapedBox applies shape decoration', (tester) async {
      final widget =
          const SizedBox(width: 50, height: 50).shapedBox(BoxShape.circle);
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.shape, BoxShape.circle);
    });

    testWidgets('circularBorderBox applies correct border and radius',
        (tester) async {
      final widget = const SizedBox(width: 100, height: 100).circularBorderBox(
        radius: 40,
        color: Colors.purple,
        width: 4,
      );
      await tester.pumpWidget(
          Directionality(textDirection: TextDirection.ltr, child: widget));
      final box = tester.widget<DecoratedBox>(find.byType(DecoratedBox));
      final decoration = box.decoration as BoxDecoration;
      expect(decoration.border, isNotNull);
      expect(decoration.border!.top.color, Colors.purple);
      expect(decoration.border!.top.width, 4);
      expect(decoration.borderRadius, BorderRadius.circular(40));
    });
  });
}
