import 'package:exui/src/widget/containers/sized_box_num.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  group('SizedBoxDoubleExtension', () {
    const double testValue = 42.0;

    testWidgets('sizedWidth creates SizedBox with correct width',
        (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.sizedWidth]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValue);
      expect(sizedBox.height, isNull);
    });

    testWidgets('sizedHeight creates SizedBox with correct height',
        (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.sizedHeight]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValue);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapHorizontal is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapHorizontal]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValue);
      expect(sizedBox.height, isNull);
    });

    testWidgets('gapVertical is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapVertical]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValue);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapHeight is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapHeight]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValue);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapWidth is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapWidth]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValue);
      expect(sizedBox.height, isNull);
    });

    testWidgets('gapColumn is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapColumn]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValue);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapRow is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapRow]),
      );

      await tester.pumpWidget(widget);

      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValue);
      expect(sizedBox.height, isNull);
    });
  });

  group('SizedBoxIntExtension', () {
    const int testValue = 42;
    final double testValueDouble = testValue.toDouble();

    testWidgets('sizedWidth creates SizedBox with correct width',
        (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.sizedWidth]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValueDouble);
      expect(sizedBox.height, isNull);
    });

    testWidgets('sizedHeight creates SizedBox with correct height',
        (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.sizedHeight]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValueDouble);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapHorizontal is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapHorizontal]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValueDouble);
      expect(sizedBox.height, isNull);
    });

    testWidgets('gapVertical is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapVertical]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValueDouble);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapHeight is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapHeight]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValueDouble);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapWidth is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapWidth]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValueDouble);
      expect(sizedBox.height, isNull);
    });

    testWidgets('gapColumn is an alias of sizedHeight', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Column(children: [testValue.gapColumn]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.height, testValueDouble);
      expect(sizedBox.width, isNull);
    });

    testWidgets('gapRow is an alias of sizedWidth', (tester) async {
      final widget = Directionality(
        textDirection: TextDirection.ltr,
        child: Row(children: [testValue.gapRow]),
      );
      await tester.pumpWidget(widget);
      final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
      expect(sizedBox.width, testValueDouble);
      expect(sizedBox.height, isNull);
    });
  });
}
