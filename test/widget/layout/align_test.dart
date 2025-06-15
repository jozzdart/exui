import 'package:exui/exui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  group('AlignedWidgetExtension', () {
    testWidgets('align() applies correct alignment and factors',
        (tester) async {
      final widget = const Text('Test').align(
        alignment: Alignment.topRight,
        widthFactor: 2,
        heightFactor: 3,
      );

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final alignFinder = find.byType(Align);
      expect(alignFinder, findsOneWidget);

      final align = tester.widget<Align>(alignFinder);
      expect(align.alignment, Alignment.topRight);
      expect(align.widthFactor, 2);
      expect(align.heightFactor, 3);
    });

    Future<void> testAlignmentWidget({
      required WidgetTester tester,
      required Widget Function({double? widthFactor, double? heightFactor})
          builder,
      required Alignment expectedAlignment,
    }) async {
      final widget = builder(widthFactor: 1.5, heightFactor: 2.0);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final align = tester.widget<Align>(find.byType(Align));
      expect(align.alignment, expectedAlignment);
      expect(align.widthFactor, 1.5);
      expect(align.heightFactor, 2.0);
    }

    testWidgets('alignCenter()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('Center').alignCenter(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.center,
      );
    });

    testWidgets('alignCenterLeft()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('CenterLeft').alignCenterLeft(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.centerLeft,
      );
    });

    testWidgets('alignCenterRight()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('CenterRight').alignCenterRight(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.centerRight,
      );
    });

    testWidgets('alignTopCenter()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('TopCenter').alignTopCenter(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.topCenter,
      );
    });

    testWidgets('alignTopLeft()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('TopLeft').alignTopLeft(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.topLeft,
      );
    });

    testWidgets('alignTopRight()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('TopRight').alignTopRight(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.topRight,
      );
    });

    testWidgets('alignBottomLeft()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('BottomLeft').alignBottomLeft(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.bottomLeft,
      );
    });

    testWidgets('alignBottomCenter()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('BottomCenter').alignBottomCenter(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.bottomCenter,
      );
    });

    testWidgets('alignBottomRight()', (tester) async {
      await testAlignmentWidget(
        tester: tester,
        builder: ({widthFactor, heightFactor}) =>
            const Text('BottomRight').alignBottomRight(
          widthFactor: widthFactor,
          heightFactor: heightFactor,
        ),
        expectedAlignment: Alignment.bottomRight,
      );
    });
  });
}
