import 'package:exui/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('VisibleWidgetExtension', () {
    testWidgets('visibleIf shows widget when true',
        (WidgetTester tester) async {
      final widget = const Text('Visible').visibleIf(true);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Visible'), findsOneWidget);
    });

    testWidgets('visibleIf hides widget when false',
        (WidgetTester tester) async {
      final widget = const Text('Hidden').visibleIf(false);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Hidden'), findsNothing);
    });

    testWidgets('visibleIfNot shows widget when false',
        (WidgetTester tester) async {
      final widget = const Text('Visible').visibleIfNot(false);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Visible'), findsOneWidget);
    });

    testWidgets('visibleIfNot hides widget when true',
        (WidgetTester tester) async {
      final widget = const Text('Hidden').visibleIfNot(true);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Hidden'), findsNothing);
    });

    testWidgets('visibleIfNull shows widget when value is null',
        (WidgetTester tester) async {
      final widget = const Text('Visible').visibleIfNull(null);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Visible'), findsOneWidget);
    });

    testWidgets('visibleIfNull hides widget when value is not null',
        (WidgetTester tester) async {
      final widget = const Text('Hidden').visibleIfNull('not null');

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Hidden'), findsNothing);
    });

    testWidgets('visibleIfNotNull shows widget when value is not null',
        (WidgetTester tester) async {
      final widget = const Text('Visible').visibleIfNotNull('value');

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Visible'), findsOneWidget);
    });

    testWidgets('visibleIfNotNull hides widget when value is null',
        (WidgetTester tester) async {
      final widget = const Text('Hidden').visibleIfNotNull(null);

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.text('Hidden'), findsNothing);
    });

    testWidgets('boxShrink returns SizedBox.shrink',
        (WidgetTester tester) async {
      final widget = const Text('Text').boxShrink();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.byType(SizedBox), findsOneWidget);
      expect(widget.width, equals(0.0));
      expect(widget.height, equals(0.0));
    });

    testWidgets('hide returns SizedBox.shrink', (WidgetTester tester) async {
      final widget = const Text('Text').hide();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.byType(SizedBox), findsOneWidget);
      expect(widget.width, equals(0.0));
      expect(widget.height, equals(0.0));
    });

    testWidgets('invisible returns SizedBox.shrink',
        (WidgetTester tester) async {
      final widget = const Text('Text').invisible();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      expect(find.byType(SizedBox), findsOneWidget);
      expect(widget.width, equals(0.0));
      expect(widget.height, equals(0.0));
    });
  });
}
