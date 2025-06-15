import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ConstrainedBoxExtension', () {
    const testKey = Key('test');

    Widget buildTestWidget(Widget child) {
      return Directionality(
        textDirection: TextDirection.ltr,
        child: Center(child: child),
      );
    }

    testWidgets('constrainedBox applies custom constraints', (tester) async {
      final widget = Container(key: testKey).constrainedBox(
        constraints: const BoxConstraints(
          minWidth: 50,
          maxWidth: 100,
          minHeight: 30,
          maxHeight: 60,
        ),
      );

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minWidth, 50);
      expect(renderBox.constraints.maxWidth, 100);
      expect(renderBox.constraints.minHeight, 30);
      expect(renderBox.constraints.maxHeight, 60);
    });

    testWidgets('constrained applies all bounds', (tester) async {
      final widget = Container(key: testKey).constrained(
        minWidth: 10,
        maxWidth: 80,
        minHeight: 20,
        maxHeight: 90,
      );

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minWidth, 10);
      expect(renderBox.constraints.maxWidth, 80);
      expect(renderBox.constraints.minHeight, 20);
      expect(renderBox.constraints.maxHeight, 90);
    });

    testWidgets('constrainedWidth applies width only', (tester) async {
      final widget = Container(key: testKey).constrainedWidth(min: 25, max: 75);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minWidth, 25);
      expect(renderBox.constraints.maxWidth, lessThanOrEqualTo(75));
      expect(renderBox.constraints.minHeight, 0);
      expect(renderBox.constraints.maxHeight, greaterThan(500));
    });

    testWidgets('constrainedHeight applies height only', (tester) async {
      final widget =
          Container(key: testKey).constrainedHeight(min: 40, max: 60);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minHeight, 40);
      expect(renderBox.constraints.maxHeight, 60);
      expect(renderBox.constraints.minWidth, 0);
      expect(renderBox.constraints.maxWidth, greaterThan(500));
    });

    testWidgets('minWidth applies only min width', (tester) async {
      final widget = Container(key: testKey).minWidth(123);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minWidth, 123);
      expect(renderBox.constraints.maxWidth, greaterThan(500));
    });

    testWidgets('maxWidth applies only max width', (tester) async {
      final widget = Container(key: testKey).maxWidth(321);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.maxWidth, 321);
      expect(renderBox.constraints.minWidth, 0);
    });

    testWidgets('minHeight applies only min height', (tester) async {
      final widget = Container(key: testKey).minHeight(222);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.minHeight, 222);
      expect(renderBox.constraints.maxHeight, greaterThan(500));
    });

    testWidgets('maxHeight applies only max height', (tester) async {
      final widget = Container(key: testKey).maxHeight(444);

      await tester.pumpWidget(buildTestWidget(widget));
      final renderBox = tester.renderObject<RenderBox>(find.byKey(testKey));
      expect(renderBox.constraints.maxHeight, 444);
      expect(renderBox.constraints.minHeight, 0);
    });
  });
}
