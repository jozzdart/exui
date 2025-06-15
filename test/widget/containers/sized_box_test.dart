import 'package:exui/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('sizedBox applies both width and height',
      (WidgetTester tester) async {
    const testKey = Key('test');
    final widget = Container(key: testKey).sizedBox(width: 100, height: 50);

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: widget),
    ));

    final sizedBoxFinder = find.byKey(testKey);
    final sizedBoxRenderObject = tester.renderObject<RenderBox>(sizedBoxFinder);

    expect(sizedBoxRenderObject.size.width, 100);
    expect(sizedBoxRenderObject.size.height, 50);
  });

  testWidgets('sizedBox applies only width', (WidgetTester tester) async {
    const testKey = Key('test');
    final widget = Container(key: testKey, height: 30).sizedBox(width: 80);

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: widget),
    ));

    final sizedBoxFinder = find.byKey(testKey);
    final sizedBoxRenderObject = tester.renderObject<RenderBox>(sizedBoxFinder);

    expect(sizedBoxRenderObject.size.width, 80);
  });

  testWidgets('sizedBox applies only height', (WidgetTester tester) async {
    const testKey = Key('test');
    final widget = Container(key: testKey, width: 60).sizedBox(height: 40);

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: widget),
    ));

    final sizedBoxFinder = find.byKey(testKey);
    final sizedBoxRenderObject = tester.renderObject<RenderBox>(sizedBoxFinder);

    expect(sizedBoxRenderObject.size.height, 40);
  });

  testWidgets('sizedWidth only sets width', (WidgetTester tester) async {
    const testKey = Key('test');
    final widget = Container(key: testKey, height: 25).sizedWidth(90);

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: widget),
    ));

    final sizedBoxFinder = find.byKey(testKey);
    final sizedBoxRenderObject = tester.renderObject<RenderBox>(sizedBoxFinder);

    expect(sizedBoxRenderObject.size.width, 90);
    expect(sizedBoxRenderObject.size.height, 25);
  });

  testWidgets('sizedHeight only sets height', (WidgetTester tester) async {
    const testKey = Key('test');
    final widget = Container(key: testKey, width: 75).sizedHeight(35);

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: Center(child: widget),
    ));

    final sizedBoxFinder = find.byKey(testKey);
    final sizedBoxRenderObject = tester.renderObject<RenderBox>(sizedBoxFinder);

    expect(sizedBoxRenderObject.size.height, 35);
    expect(sizedBoxRenderObject.size.width, 75);
  });
}
