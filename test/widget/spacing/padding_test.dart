import 'package:exui/src/exui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';

void main() {
  group('PaddingExtensions', () {
    const testWidget = Placeholder();

    Padding extractPadding(Widget widget) {
      expect(widget, isA<Padding>());
      return widget as Padding;
    }

    test('padding applies custom EdgeInsets', () {
      final padded = testWidget.padding(const EdgeInsets.fromLTRB(1, 2, 3, 4));
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.fromLTRB(1, 2, 3, 4));
      expect(padding.child, testWidget);
    });

    test('paddingAll applies uniform padding', () {
      final padded = testWidget.paddingAll(10);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.all(10));
    });

    test('paddingOnly applies individual sides', () {
      final padded =
          testWidget.paddingOnly(left: 1, top: 2, right: 3, bottom: 4);
      final padding = extractPadding(padded);
      expect(padding.padding,
          const EdgeInsets.only(left: 1, top: 2, right: 3, bottom: 4));
    });

    test('paddingOnly applies defaults when values omitted', () {
      final padded = testWidget.paddingOnly(top: 5);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.only(top: 5));
    });

    test('paddingSymmetric applies symmetric padding', () {
      final padded = testWidget.paddingSymmetric(horizontal: 10, vertical: 20);
      final padding = extractPadding(padded);
      expect(padding.padding,
          const EdgeInsets.symmetric(horizontal: 10, vertical: 20));
    });

    test('paddingHorizontal applies horizontal padding only', () {
      final padded = testWidget.paddingHorizontal(15);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.symmetric(horizontal: 15));
    });

    test('paddingVertical applies vertical padding only', () {
      final padded = testWidget.paddingVertical(25);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.symmetric(vertical: 25));
    });

    test('paddingLeft applies left padding only', () {
      final padded = testWidget.paddingLeft(5);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.only(left: 5));
    });

    test('paddingRight applies right padding only', () {
      final padded = testWidget.paddingRight(6);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.only(right: 6));
    });

    test('paddingTop applies top padding only', () {
      final padded = testWidget.paddingTop(7);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.only(top: 7));
    });

    test('paddingBottom applies bottom padding only', () {
      final padded = testWidget.paddingBottom(8);
      final padding = extractPadding(padded);
      expect(padding.padding, const EdgeInsets.only(bottom: 8));
    });

    test('chained paddings are nested correctly', () {
      final padded = testWidget.paddingAll(8).paddingHorizontal(4);
      final outer = extractPadding(padded);
      expect(outer.padding, const EdgeInsets.symmetric(horizontal: 4));

      final inner = extractPadding(outer.child!);
      expect(inner.padding, const EdgeInsets.all(8));
      expect(inner.child, testWidget);
    });
  });
}
