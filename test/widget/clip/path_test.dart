import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ClipPathWidgetExtensions', () {
    testWidgets('clipPath applies clipper and clipBehavior correctly',
        (tester) async {
      final testKey = UniqueKey();
      final widget = Container(key: testKey).clipPath(
        clipper: _TestClipper(),
        clipBehavior: Clip.hardEdge,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: widget),
        ),
      );

      // Verify the presence of ClipPath
      final clipPathFinder = find.byType(ClipPath);
      expect(clipPathFinder, findsOneWidget);

      final clipPathWidget = tester.widget<ClipPath>(clipPathFinder);
      expect(clipPathWidget.clipper, isA<_TestClipper>());
      expect(clipPathWidget.clipBehavior, equals(Clip.hardEdge));

      // Ensure child is the original container
      expect(clipPathWidget.child, isA<Container>());
      expect((clipPathWidget.child as Container).key, equals(testKey));
    });

    testWidgets('clipPath defaults to Clip.antiAlias when not specified',
        (tester) async {
      final widget = Container().clipPath(
        clipper: _TestClipper(),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: widget),
        ),
      );

      final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
      expect(clipPath.clipBehavior, equals(Clip.antiAlias));
    });

    testWidgets('clipPath with null clipper still renders correctly',
        (tester) async {
      final widget = Container().clipPath(
        clipper: null,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: widget),
        ),
      );

      final clipPath = tester.widget<ClipPath>(find.byType(ClipPath));
      expect(clipPath.clipper, isNull);
      expect(clipPath.child, isA<Container>());
    });
  });
}

class _TestClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
