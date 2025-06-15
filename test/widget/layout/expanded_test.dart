import 'package:exui/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExpandedWidgetExtension', () {
    testWidgets('expandedFlex wraps with correct flex value', (tester) async {
      final widget = const Text('Test').expandedFlex(3);
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(3));
      expect(widget.child, isA<Text>());
      expect((widget.child as Text).data, equals('Test'));
    });

    testWidgets('expanded1 wraps with flex 1', (tester) async {
      final widget = const Text('One').expanded1;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(1));
    });

    testWidgets('expanded2 wraps with flex 2', (tester) async {
      final widget = const Text('Two').expanded2;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(2));
    });

    testWidgets('expanded3 wraps with flex 3', (tester) async {
      final widget = const Text('Three').expanded3;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(3));
    });

    testWidgets('expanded4 wraps with flex 4', (tester) async {
      final widget = const Text('Four').expanded4;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(4));
    });

    testWidgets('expanded5 wraps with flex 5', (tester) async {
      final widget = const Text('Five').expanded5;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(5));
    });

    testWidgets('expanded6 wraps with flex 6', (tester) async {
      final widget = const Text('Six').expanded6;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(6));
    });

    testWidgets('expanded7 wraps with flex 7', (tester) async {
      final widget = const Text('Seven').expanded7;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(7));
    });

    testWidgets('expanded8 wraps with flex 8', (tester) async {
      final widget = const Text('Eight').expanded8;
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(8));
    });

    testWidgets('expandedFlex default is 1', (tester) async {
      final widget = const Text('Default').expandedFlex();
      expect(widget, isA<Expanded>());
      expect((widget).flex, equals(1));
    });

    testWidgets('expandedFlex works in a real layout', (tester) async {
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Row(
            children: [
              const SizedBox(width: 50, child: Text('A')).expandedFlex(1),
              const SizedBox(width: 50, child: Text('B')).expandedFlex(2),
            ],
          ),
        ),
      );

      final expandedWidgets =
          tester.widgetList<Expanded>(find.byType(Expanded));
      expect(expandedWidgets.length, 2);
      expect(expandedWidgets.elementAt(0).flex, 1);
      expect(expandedWidgets.elementAt(1).flex, 2);
    });
  });
}
