import 'package:exui/src/material/control/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Material Button Widget Extensions', () {
    testWidgets(
        'elevatedButton builds ElevatedButton with correct child and onPressed',
        (tester) async {
      bool tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('Elevated').elevatedButton(
              onPressed: () => tapped = true,
            ),
          ),
        ),
      );

      expect(find.text('Elevated'), findsOneWidget);
      await tester.tap(find.byType(ElevatedButton));
      expect(tapped, true);
    });

    testWidgets('elevatedIconButton builds with icon and label',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('Label').elevatedIconButton(
              onPressed: () {},
              icon: const Icon(Icons.star),
            ),
          ),
        ),
      );

      expect(find.text('Label'), findsOneWidget);
      expect(find.byIcon(Icons.star), findsOneWidget);
    });

    testWidgets('filledButton builds FilledButton with child', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('Filled').filledButton(onPressed: () {}),
          ),
        ),
      );

      expect(find.text('Filled'), findsOneWidget);
      expect(find.byType(FilledButton), findsOneWidget);
    });

    testWidgets('filledTonalButton builds tonal button', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('Tonal').filledTonalButton(onPressed: () {}),
          ),
        ),
      );

      expect(find.text('Tonal'), findsOneWidget);
      expect(find.byType(FilledButton), findsOneWidget);
    });

    testWidgets('filledIconButton builds with icon and label', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('FilledIcon').filledIconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ),
        ),
      );

      expect(find.text('FilledIcon'), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('filledTonalIconButton builds with tonal icon button',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('TonalIcon').filledTonalIconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ),
        ),
      );

      expect(find.text('TonalIcon'), findsOneWidget);
      expect(find.byIcon(Icons.edit), findsOneWidget);
    });

    testWidgets('outlinedButton builds OutlinedButton', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('Outlined').outlinedButton(onPressed: () {}),
          ),
        ),
      );

      expect(find.text('Outlined'), findsOneWidget);
      expect(find.byType(OutlinedButton), findsOneWidget);
    });

    testWidgets('outlinedIconButton builds with icon and label',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('OutlinedIcon').outlinedIconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ),
        ),
      );

      expect(find.text('OutlinedIcon'), findsOneWidget);
      expect(find.byIcon(Icons.edit), findsOneWidget);
    });

    testWidgets('textButton builds TextButton with child', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('TextBtn').textButton(onPressed: () {}),
          ),
        ),
      );

      expect(find.text('TextBtn'), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
    });

    testWidgets('textIconButton builds with icon and label', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text('TextIcon').textIconButton(
              onPressed: () {},
              icon: const Icon(Icons.help),
            ),
          ),
        ),
      );

      expect(find.text('TextIcon'), findsOneWidget);
      expect(find.byIcon(Icons.help), findsOneWidget);
    });

    testWidgets('disabled buttons should not trigger onPressed',
        (tester) async {
      bool triggered = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                Text('Disabled').elevatedButton(onPressed: null),
                Text('Filled').filledButton(onPressed: null),
                Text('Outlined').outlinedButton(onPressed: null),
                Text('Text').textButton(onPressed: null),
              ],
            ),
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.tap(find.byType(FilledButton));
      await tester.tap(find.byType(OutlinedButton));
      await tester.tap(find.byType(TextButton));

      expect(triggered, isFalse);
    });
  });
}
