import 'package:exui/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const widget1 = Text('One');
  const widget2 = Text('Two');

  final list = [widget1, widget2];

  group('ColumnWidgetListExtension', () {
    test('column() returns correct config', () {
      final col = list.column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.end);
      expect(col.crossAxisAlignment, CrossAxisAlignment.start);
      expect(col.spacing, 10);
      expect(col.children, equals(list));
    });

    test('columnCenterCenter()', () {
      final col = list.columnCenterCenter();
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.center);
    });

    test('columnCenterBaseline()', () {
      final col =
          list.columnCenterBaseline(textBaseline: TextBaseline.alphabetic);
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(col.textBaseline, TextBaseline.alphabetic);
    });

    test('columnCenterEnd()', () {
      final col = list.columnCenterEnd();
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.end);
    });

    test('columnCenterStart()', () {
      final col = list.columnCenterStart();
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.start);
    });

    test('columnCenterStretch()', () {
      final col = list.columnCenterStretch();
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.stretch);
    });

    test('columnEndCenter()', () {
      final col = list.columnEndCenter();
      expect(col.mainAxisAlignment, MainAxisAlignment.end);
      expect(col.crossAxisAlignment, CrossAxisAlignment.center);
    });

    test('columnEndStretch()', () {
      final col = list.columnEndStretch();
      expect(col.mainAxisAlignment, MainAxisAlignment.end);
      expect(col.crossAxisAlignment, CrossAxisAlignment.stretch);
    });

    test('columnSpaceBetweenEnd()', () {
      final col = list.columnSpaceBetweenEnd();
      expect(col.mainAxisAlignment, MainAxisAlignment.spaceBetween);
      expect(col.crossAxisAlignment, CrossAxisAlignment.end);
    });

    test('columnSpaceEvenlyStart()', () {
      final col = list.columnSpaceEvenlyStart();
      expect(col.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
      expect(col.crossAxisAlignment, CrossAxisAlignment.start);
    });

    test('columnStartCenter()', () {
      final col = list.columnStartCenter();
      expect(col.mainAxisAlignment, MainAxisAlignment.start);
      expect(col.crossAxisAlignment, CrossAxisAlignment.center);
    });

    test('columnMainCenter()', () {
      final col = list.columnMainCenter(
        crossAxisAlignment: CrossAxisAlignment.end,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.end);
    });

    test('columnMainSpaceAround()', () {
      final col = list.columnMainSpaceAround(
        crossAxisAlignment: CrossAxisAlignment.start,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.spaceAround);
      expect(col.crossAxisAlignment, CrossAxisAlignment.start);
    });

    test('columnCrossEnd()', () {
      final col = list.columnCrossEnd(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.spaceEvenly);
      expect(col.crossAxisAlignment, CrossAxisAlignment.end);
    });

    test('columnCrossBaseline() sets textBaseline correctly', () {
      final col = list.columnCrossBaseline(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.ideographic,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.center);
      expect(col.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(col.textBaseline, TextBaseline.ideographic);
    });
  });

  group('ColumnWidgetExtension', () {
    test('column() on single widget', () {
      final col = widget1.column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 5,
      );
      expect(col.mainAxisAlignment, MainAxisAlignment.spaceAround);
      expect(col.crossAxisAlignment, CrossAxisAlignment.stretch);
      expect(col.spacing, 5);
      expect(col.children.length, 1);
      expect(col.children.first, widget1);
    });
  });
}
