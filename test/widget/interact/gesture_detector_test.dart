import 'package:exui/exui.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WidgetOnGestureExtension', () {
    testWidgets('onTap triggers callback', (tester) async {
      bool tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Tap Me').onTap(() {
                    tapped = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Tap Me'));
      await tester.pumpAndSettle();

      expect(tapped, isTrue);
    });

    testWidgets('onTapDown triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Tap Down').onTapDown((_) {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final gesture =
          await tester.startGesture(tester.getCenter(find.text('Tap Down')));
      await gesture.up();
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onTapUp triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Tap Up').onTapUp((_) {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Tap Up'));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onTapCancel triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Tap Cancel').onTapCancel(() {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final gesture =
          await tester.startGesture(tester.getCenter(find.text('Tap Cancel')));
      await gesture.cancel();
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onDoubleTap triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Double Tap').onDoubleTap(() {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Double Tap'));
      await tester.pump(const Duration(milliseconds: 50));
      await tester.tap(find.text('Double Tap'));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onLongPress triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Long Press').onLongPress(() {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.longPress(find.text('Long Press'));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onVerticalDragStart triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Vertical Drag').onVerticalDragStart((_) {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final gesture = await tester
          .startGesture(tester.getCenter(find.text('Vertical Drag')));
      await gesture.moveBy(const Offset(0, 50));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onHorizontalDragStart triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child:
                      const Text('Horizontal Drag').onHorizontalDragStart((_) {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final gesture = await tester
          .startGesture(tester.getCenter(find.text('Horizontal Drag')));
      await gesture.moveBy(const Offset(50, 0));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('onPanStart triggers callback', (tester) async {
      bool called = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Pan Start').onPanStart((_) {
                    called = true;
                  }),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final gesture =
          await tester.startGesture(tester.getCenter(find.text('Pan Start')));
      await gesture.moveBy(const Offset(20, 20));
      await tester.pumpAndSettle();

      expect(called, isTrue);
    });

    testWidgets('detectGestures triggers onTap', (tester) async {
      bool tap = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.red,
                  child: const Text('Tap').gestureDetector(
                    onTap: () => tap = true,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Tap'));
      await tester.pumpAndSettle();

      expect(tap, isTrue);
    });

    testWidgets('detectGestures triggers onDoubleTap', (tester) async {
      bool doubleTap = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.green,
                  child: const Text('Double Tap').gestureDetector(
                    onDoubleTap: () => doubleTap = true,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.tap(find.text('Double Tap'));
      await tester.pump(const Duration(milliseconds: 50));
      await tester.tap(find.text('Double Tap'));
      await tester.pumpAndSettle();

      expect(doubleTap, isTrue);
    });

    testWidgets('detectGestures triggers onLongPress', (tester) async {
      bool longPress = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: ColoredBox(
                  color: Colors.blue,
                  child: const Text('Long Press').gestureDetector(
                    onLongPress: () => longPress = true,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      await tester.longPress(find.text('Long Press'));
      await tester.pumpAndSettle();

      expect(longPress, isTrue);
    });
  });
}
