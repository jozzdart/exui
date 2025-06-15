import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RowWidgetListExtension', () {
    final widgetList = [const Text('A'), const Text('B')];

    testWidgets('row() creates Row with default values', (tester) async {
      final row = widgetList.row();
      expect(row, isA<Row>());
      expect(row.children, widgetList);
      expect(row.mainAxisAlignment, MainAxisAlignment.start);
      expect(row.crossAxisAlignment, CrossAxisAlignment.center);
    });

    testWidgets('row() respects all parameters', (tester) async {
      final row = widgetList.row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        verticalDirection: VerticalDirection.up,
        textDirection: TextDirection.rtl,
        textBaseline: TextBaseline.alphabetic,
      );

      expect(row.mainAxisAlignment, MainAxisAlignment.center);
      expect(row.crossAxisAlignment, CrossAxisAlignment.end);
      expect(row.mainAxisSize, MainAxisSize.min);
      expect(row.spacing, 10);
      expect(row.verticalDirection, VerticalDirection.up);
      expect(row.textDirection, TextDirection.rtl);
      expect(row.textBaseline, TextBaseline.alphabetic);
      expect(row.children, widgetList);
    });

    final testCases = <String, Row Function()>{
      'rowStartCenter': () => widgetList.rowStartCenter(),
      'rowStartEnd': () => widgetList.rowStartEnd(),
      'rowStartStart': () => widgetList.rowStartStart(),
      'rowStartStretch': () => widgetList.rowStartStretch(),
      'rowEndCenter': () => widgetList.rowEndCenter(),
      'rowEndEnd': () => widgetList.rowEndEnd(),
      'rowEndStart': () => widgetList.rowEndStart(),
      'rowEndStretch': () => widgetList.rowEndStretch(),
      'rowCenterCenter': () => widgetList.rowCenterCenter(),
      'rowCenterEnd': () => widgetList.rowCenterEnd(),
      'rowCenterStart': () => widgetList.rowCenterStart(),
      'rowCenterStretch': () => widgetList.rowCenterStretch(),
      'rowMainStart': () => widgetList.rowMainStart(),
      'rowMainCenter': () => widgetList.rowMainCenter(),
      'rowMainEnd': () => widgetList.rowMainEnd(),
      'rowMainSpaceAround': () => widgetList.rowMainSpaceAround(),
      'rowMainSpaceBetween': () => widgetList.rowMainSpaceBetween(),
      'rowMainSpaceEvenly': () => widgetList.rowMainSpaceEvenly(),
      'rowCrossStart': () => widgetList.rowCrossStart(),
      'rowCrossCenter': () => widgetList.rowCrossCenter(),
      'rowCrossEnd': () => widgetList.rowCrossEnd(),
      'rowCrossStretch': () => widgetList.rowCrossStretch(),
      'rowSpaceAroundCenter': () => widgetList.rowSpaceAroundCenter(),
      'rowSpaceAroundEnd': () => widgetList.rowSpaceAroundEnd(),
      'rowSpaceAroundStart': () => widgetList.rowSpaceAroundStart(),
      'rowSpaceAroundStretch': () => widgetList.rowSpaceAroundStretch(),
      'rowSpaceBetweenCenter': () => widgetList.rowSpaceBetweenCenter(),
      'rowSpaceBetweenEnd': () => widgetList.rowSpaceBetweenEnd(),
      'rowSpaceBetweenStart': () => widgetList.rowSpaceBetweenStart(),
      'rowSpaceBetweenStretch': () => widgetList.rowSpaceBetweenStretch(),
      'rowSpaceEvenlyCenter': () => widgetList.rowSpaceEvenlyCenter(),
      'rowSpaceEvenlyEnd': () => widgetList.rowSpaceEvenlyEnd(),
      'rowSpaceEvenlyStart': () => widgetList.rowSpaceEvenlyStart(),
      'rowSpaceEvenlyStretch': () => widgetList.rowSpaceEvenlyStretch(),
    };

    for (final entry in testCases.entries) {
      test('$entry creates valid Row', () {
        final row = entry.value();
        expect(row, isA<Row>());
        expect(row.children, widgetList);
      });
    }

    test('rowStartBaseline requires textBaseline', () {
      final row =
          widgetList.rowStartBaseline(textBaseline: TextBaseline.alphabetic);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });

    test('rowEndBaseline requires textBaseline', () {
      final row =
          widgetList.rowEndBaseline(textBaseline: TextBaseline.ideographic);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.ideographic);
    });

    test('rowCenterBaseline requires textBaseline', () {
      final row =
          widgetList.rowCenterBaseline(textBaseline: TextBaseline.alphabetic);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
    });

    test('rowCrossBaseline requires textBaseline', () {
      final row = widgetList.rowCrossBaseline(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textBaseline: TextBaseline.alphabetic,
      );
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });

    test('rowSpaceAroundBaseline requires textBaseline', () {
      final row = widgetList.rowSpaceAroundBaseline(
          textBaseline: TextBaseline.alphabetic);
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceAround);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });

    test('rowSpaceBetweenBaseline requires textBaseline', () {
      final row = widgetList.rowSpaceBetweenBaseline(
          textBaseline: TextBaseline.alphabetic);
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceBetween);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });

    test('rowSpaceEvenlyBaseline requires textBaseline', () {
      final row = widgetList.rowSpaceEvenlyBaseline(
          textBaseline: TextBaseline.alphabetic);
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
      expect(row.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });
  });

  group('RowWidgetExtension', () {
    const widget = Text('Item');

    test('row() wraps single widget in Row', () {
      final row = widget.row();
      expect(row, isA<Row>());
      expect(row.children.length, 1);
      expect(row.children.first, widget);
      expect(row.mainAxisAlignment, MainAxisAlignment.start);
    });

    test('row() with parameters', () {
      final row = widget.row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.up,
        textBaseline: TextBaseline.alphabetic,
      );

      expect(row.mainAxisAlignment, MainAxisAlignment.end);
      expect(row.crossAxisAlignment, CrossAxisAlignment.start);
      expect(row.mainAxisSize, MainAxisSize.min);
      expect(row.spacing, 5);
      expect(row.textBaseline, TextBaseline.alphabetic);
    });
  });
}
