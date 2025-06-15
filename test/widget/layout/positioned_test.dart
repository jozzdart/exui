import 'package:exui/exui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  group('PositionedWidgetExtensions', () {
    testWidgets('positioned() applies all params correctly', (tester) async {
      final widget = Container().positioned(
        top: 10,
        left: 20,
        bottom: 40,
        width: 50,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));

      expect(positioned.top, 10);
      expect(positioned.left, 20);
      expect(positioned.bottom, 40);
      expect(positioned.width, 50);
      expect(positioned.right, null);
      expect(positioned.height, null);
    });

    testWidgets('positionedTop() only sets top', (tester) async {
      final widget = Container().positionedTop(15);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.top, 15);
      expect(positioned.left, null);
      expect(positioned.right, null);
      expect(positioned.bottom, null);
    });

    testWidgets('positionedLeft() only sets left', (tester) async {
      final widget = Container().positionedLeft(25);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.left, 25);
      expect(positioned.top, null);
      expect(positioned.right, null);
      expect(positioned.bottom, null);
    });

    testWidgets('positionedRight() only sets right', (tester) async {
      final widget = Container().positionedRight(35);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.right, 35);
      expect(positioned.top, null);
      expect(positioned.left, null);
      expect(positioned.bottom, null);
    });

    testWidgets('positionedBottom() only sets bottom', (tester) async {
      final widget = Container().positionedBottom(45);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.bottom, 45);
      expect(positioned.top, null);
      expect(positioned.left, null);
      expect(positioned.right, null);
    });

    testWidgets('positionedWidth() sets width', (tester) async {
      final widget = Container().positionedWidth(123);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.width, 123);
    });

    testWidgets('positionedHeight() sets height', (tester) async {
      final widget = Container().positionedHeight(321);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(children: [widget]),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.height, 321);
    });
  });
}
