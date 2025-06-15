import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContainerWidgetExtension', () {
    testWidgets('wraps widget with width, height and color',
        (WidgetTester tester) async {
      final widget = const Text('test').container(
        width: 100,
        height: 50,
        color: Colors.red,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: widget),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);

      final renderBox = tester.renderObject<RenderBox>(containerFinder);
      expect(renderBox.size.width, 100);
      expect(renderBox.size.height, 50);

      final coloredBoxFinder = find.descendant(
        of: containerFinder,
        matching: find.byType(ColoredBox),
      );
      expect(coloredBoxFinder, findsOneWidget);

      final coloredBox = tester.widget<ColoredBox>(coloredBoxFinder);
      expect(coloredBox.color, Colors.red);
    });

    testWidgets('wraps widget with padding and margin',
        (WidgetTester tester) async {
      final widget = const Text('padded').container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(12),
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      expect(find.byType(Padding),
          findsNWidgets(2)); // Margin and padding both use Padding
      expect(find.text('padded'), findsOneWidget);
    });

    testWidgets('wraps widget with decoration', (WidgetTester tester) async {
      final widget = const Text('decorated').container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final decoratedBoxFinder = find.byType(DecoratedBox);
      expect(decoratedBoxFinder, findsOneWidget);

      final decoratedBox = tester.widget<DecoratedBox>(decoratedBoxFinder);
      final decoration = decoratedBox.decoration as BoxDecoration;
      expect(decoration.color, Colors.green);
      expect(
          decoration.borderRadius, const BorderRadius.all(Radius.circular(10)));
    });

    testWidgets('wraps widget with constraints', (WidgetTester tester) async {
      final widget = const Text('constrained').container(
        constraints: const BoxConstraints(
          minWidth: 50,
          minHeight: 50,
          maxWidth: 50,
          maxHeight: 50,
        ),
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: widget),
        ),
      );

      final renderBox = tester.renderObject<RenderBox>(find.byType(Container));
      expect(renderBox.size, const Size(50, 50));
    });

    testWidgets('wraps widget with alignment', (WidgetTester tester) async {
      final widget = const SizedBox(
        width: 100,
        height: 100,
        child: Text('centered'),
      ).container(alignment: Alignment.bottomRight);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final alignFinder = find.byType(Align);
      expect(alignFinder, findsOneWidget);

      final alignWidget = tester.widget<Align>(alignFinder);
      expect(alignWidget.alignment, Alignment.bottomRight);
    });

    testWidgets('wraps widget with default values',
        (WidgetTester tester) async {
      final widget = const Text('default').container();

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      expect(find.text('default'), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
    });
  });
}
