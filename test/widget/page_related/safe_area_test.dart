import 'package:exui/src/widget/page_related/safe_area.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget testChild(String key) => Text(key, key: Key(key));

  group('SafeAreaExtension', () {
    testWidgets('safeArea applies correct configuration', (tester) async {
      final widget = testChild('base').safeArea(
        left: true,
        top: false,
        right: true,
        bottom: false,
        minimum: EdgeInsets.all(4),
        maintainBottomViewPadding: true,
      );

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isTrue);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isTrue);
      expect(safeArea.bottom, isFalse);
      expect(safeArea.minimum, EdgeInsets.all(4));
      expect(safeArea.maintainBottomViewPadding, isTrue);
      expect(find.byKey(const Key('base')), findsOneWidget);
    });

    testWidgets('safeAreaAll uses all sides', (tester) async {
      final widget = testChild('all').safeAreaAll();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isTrue);
      expect(safeArea.top, isTrue);
      expect(safeArea.right, isTrue);
      expect(safeArea.bottom, isTrue);
      expect(find.byKey(const Key('all')), findsOneWidget);
    });

    testWidgets('safeAreaNone disables all sides', (tester) async {
      final widget = testChild('none').safeAreaNone();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isFalse);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isFalse);
      expect(safeArea.bottom, isFalse);
      expect(find.byKey(const Key('none')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyTop enables only top', (tester) async {
      final widget = testChild('top').safeAreaOnlyTop();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isFalse);
      expect(safeArea.top, isTrue);
      expect(safeArea.right, isFalse);
      expect(safeArea.bottom, isFalse);
      expect(find.byKey(const Key('top')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyBottom enables only bottom', (tester) async {
      final widget = testChild('bottom').safeAreaOnlyBottom();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isFalse);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isFalse);
      expect(safeArea.bottom, isTrue);
      expect(find.byKey(const Key('bottom')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyLeft enables only left', (tester) async {
      final widget = testChild('left').safeAreaOnlyLeft();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isTrue);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isFalse);
      expect(safeArea.bottom, isFalse);
      expect(find.byKey(const Key('left')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyRight enables only right', (tester) async {
      final widget = testChild('right').safeAreaOnlyRight();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isFalse);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isTrue);
      expect(safeArea.bottom, isFalse);
      expect(find.byKey(const Key('right')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyHorizontal enables left and right only',
        (tester) async {
      final widget = testChild('horizontal').safeAreaOnlyHorizontal();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isTrue);
      expect(safeArea.top, isFalse);
      expect(safeArea.right, isTrue);
      expect(safeArea.bottom, isFalse);
      expect(find.byKey(const Key('horizontal')), findsOneWidget);
    });

    testWidgets('safeAreaOnlyVertical enables top and bottom only',
        (tester) async {
      final widget = testChild('vertical').safeAreaOnlyVertical();

      await tester.pumpWidget(Directionality(
        textDirection: TextDirection.ltr,
        child: widget,
      ));

      final safeArea = tester.widget<SafeArea>(find.byType(SafeArea));
      expect(safeArea.left, isFalse);
      expect(safeArea.top, isTrue);
      expect(safeArea.right, isFalse);
      expect(safeArea.bottom, isTrue);
      expect(find.byKey(const Key('vertical')), findsOneWidget);
    });
  });
}
