import 'package:exui/exui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HeroWidgetExtension', () {
    testWidgets('wraps widget with Hero and sets tag',
        (WidgetTester tester) async {
      const tag = 'test-hero';
      final widget = const Placeholder().hero(tag);

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final heroFinder = find.byType(Hero);
      expect(heroFinder, findsOneWidget);

      final heroWidget = tester.widget<Hero>(heroFinder);
      expect(heroWidget.tag, equals(tag));
      expect(heroWidget.child, isA<Placeholder>());
    });

    testWidgets('respects transitionOnUserGestures flag',
        (WidgetTester tester) async {
      final widget = const Placeholder().hero(
        'gesture-hero',
        transitionOnUserGestures: true,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final heroWidget = tester.widget<Hero>(find.byType(Hero));
      expect(heroWidget.transitionOnUserGestures, isTrue);
    });

    testWidgets('uses custom createRectTween', (WidgetTester tester) async {
      final tween = Tween<Rect?>();
      createRectTween(Rect? a, Rect? b) => tween;

      final widget = const Placeholder().hero(
        'custom-tween',
        createRectTween: createRectTween,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final hero = tester.widget<Hero>(find.byType(Hero));
      expect(hero.createRectTween, equals(createRectTween));
    });

    testWidgets('uses custom flightShuttleBuilder',
        (WidgetTester tester) async {
      flightShuttleBuilder(BuildContext a, Animation<double> b,
          HeroFlightDirection c, BuildContext d, BuildContext e) {
        return const Text('flight');
      }

      final widget = const Placeholder().hero(
        'shuttle-hero',
        flightShuttleBuilder: flightShuttleBuilder,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final hero = tester.widget<Hero>(find.byType(Hero));
      expect(hero.flightShuttleBuilder, equals(flightShuttleBuilder));
    });

    testWidgets('uses custom placeholderBuilder', (WidgetTester tester) async {
      placeholderBuilder(BuildContext context, Size size, Widget child) {
        return const Text('placeholder');
      }

      final widget = const Placeholder().hero(
        'placeholder-hero',
        placeholderBuilder: placeholderBuilder,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final hero = tester.widget<Hero>(find.byType(Hero));
      expect(hero.placeholderBuilder, equals(placeholderBuilder));
    });
  });
}
