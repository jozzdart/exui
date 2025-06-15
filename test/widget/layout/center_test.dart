import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('center() wraps widget in Center with no factors',
      (tester) async {
    const child = Text('Centered');
    final widget = child.center();

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final centerFinder = find.byType(Center);
    final textFinder = find.text('Centered');

    expect(centerFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);

    final center = tester.widget<Center>(centerFinder);
    expect(center.widthFactor, isNull);
    expect(center.heightFactor, isNull);
    expect(center.child, child);
  });

  testWidgets('center() wraps widget in Center with width and height factors',
      (tester) async {
    const child = Text('Sized Centered');
    final widget = child.center(widthFactor: 0.8, heightFactor: 1.5);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final center = tester.widget<Center>(find.byType(Center));
    expect(center.widthFactor, 0.8);
    expect(center.heightFactor, 1.5);
    expect(center.child, child);
  });

  testWidgets('centerWidth() sets widthFactor only', (tester) async {
    const child = Text('Width Centered');
    final widget = child.centerWidth(2.0);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final center = tester.widget<Center>(find.byType(Center));
    expect(center.widthFactor, 2.0);
    expect(center.heightFactor, isNull);
    expect(center.child, child);
  });

  testWidgets('centerHeight() sets heightFactor only', (tester) async {
    const child = Text('Height Centered');
    final widget = child.centerHeight(3.5);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final center = tester.widget<Center>(find.byType(Center));
    expect(center.heightFactor, 3.5);
    expect(center.widthFactor, isNull);
    expect(center.child, child);
  });

  testWidgets('centerWidth(null) behaves like center()', (tester) async {
    const child = Text('Null Width');
    final widget = child.centerWidth(null);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final center = tester.widget<Center>(find.byType(Center));
    expect(center.widthFactor, isNull);
    expect(center.heightFactor, isNull);
    expect(center.child, child);
  });

  testWidgets('centerHeight(null) behaves like center()', (tester) async {
    const child = Text('Null Height');
    final widget = child.centerHeight(null);

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ),
    );

    final center = tester.widget<Center>(find.byType(Center));
    expect(center.heightFactor, isNull);
    expect(center.widthFactor, isNull);
    expect(center.child, child);
  });
}
