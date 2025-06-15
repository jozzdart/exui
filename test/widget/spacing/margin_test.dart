import 'package:exui/src/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget testChild = const Placeholder();

  group('MarginWidgetExtension', () {
    testWidgets('margin applies custom EdgeInsets', (tester) async {
      final widget = testChild.margin(const EdgeInsets.fromLTRB(1, 2, 3, 4));
      expect(widget.margin, const EdgeInsets.fromLTRB(1, 2, 3, 4));
      expect(widget.child, testChild);
    });

    testWidgets('marginAll applies uniform margin', (tester) async {
      final widget = testChild.marginAll(8);
      expect(widget.margin, const EdgeInsets.all(8));
    });

    testWidgets('marginOnly applies individual margins', (tester) async {
      final widget = testChild.marginOnly(top: 5, left: 10);
      expect(widget.margin, const EdgeInsets.only(top: 5, left: 10));
    });

    testWidgets('marginSymmetric applies symmetric margin', (tester) async {
      final widget = testChild.marginSymmetric(horizontal: 7, vertical: 3);
      expect(widget.margin,
          const EdgeInsets.symmetric(horizontal: 7, vertical: 3));
    });

    testWidgets('marginHorizontal applies horizontal margin', (tester) async {
      final widget = testChild.marginHorizontal(12);
      expect(widget.margin, const EdgeInsets.symmetric(horizontal: 12));
    });

    testWidgets('marginVertical applies vertical margin', (tester) async {
      final widget = testChild.marginVertical(6);
      expect(widget.margin, const EdgeInsets.symmetric(vertical: 6));
    });

    testWidgets('marginTop applies top margin only', (tester) async {
      final widget = testChild.marginTop(10);
      expect(widget.margin, const EdgeInsets.only(top: 10));
    });

    testWidgets('marginLeft applies left margin only', (tester) async {
      final widget = testChild.marginLeft(15);
      expect(widget.margin, const EdgeInsets.only(left: 15));
    });

    testWidgets('marginRight applies right margin only', (tester) async {
      final widget = testChild.marginRight(20);
      expect(widget.margin, const EdgeInsets.only(right: 20));
    });

    testWidgets('marginBottom applies bottom margin only', (tester) async {
      final widget = testChild.marginBottom(25);
      expect(widget.margin, const EdgeInsets.only(bottom: 25));
    });
  });
}
