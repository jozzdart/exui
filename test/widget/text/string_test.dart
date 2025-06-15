import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringTextExtensions.text()', () {
    testWidgets('creates basic Text widget with default parameters',
        (tester) async {
      const str = 'Hello';
      final widget = str.text();

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      expect(find.text(str), findsOneWidget);
      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.data, str);
      expect(textWidget.style, isNull);
    });

    testWidgets('applies provided Text widget parameters', (tester) async {
      const str = 'Styled';
      final style = TextStyle(fontSize: 20, color: Colors.green);
      final widget = str.text(
        style: style,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.fade,
        semanticsLabel: 'Label',
        textDirection: TextDirection.rtl,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.style, style);
      expect(textWidget.textAlign, TextAlign.center);
      expect(textWidget.maxLines, 2);
      expect(textWidget.overflow, TextOverflow.fade);
      expect(textWidget.semanticsLabel, 'Label');
      expect(textWidget.textDirection, TextDirection.rtl);
    });
  });

  group('StringTextExtensions.styledText()', () {
    testWidgets('creates styled Text widget with inline TextStyle',
        (tester) async {
      const str = 'Inline Styled';
      final widget = str.styledText(
        color: Colors.blue,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.5,
        wordSpacing: 2,
        height: 1.2,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dashed,
        decorationThickness: 2,
        fontFamily: 'Roboto',
        textAlign: TextAlign.right,
        textDirection: TextDirection.ltr,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final textWidget = tester.widget<Text>(find.byType(Text));
      final style = textWidget.style!;
      expect(style.color, Colors.blue);
      expect(style.fontSize, 18);
      expect(style.fontWeight, FontWeight.w600);
      expect(style.fontStyle, FontStyle.italic);
      expect(style.letterSpacing, 1.5);
      expect(style.wordSpacing, 2);
      expect(style.height, 1.2);
      expect(style.decoration, TextDecoration.underline);
      expect(style.decorationColor, Colors.red);
      expect(style.decorationStyle, TextDecorationStyle.dashed);
      expect(style.decorationThickness, 2);
      expect(style.fontFamily, 'Roboto');

      expect(textWidget.textAlign, TextAlign.right);
      expect(textWidget.maxLines, 1);
      expect(textWidget.overflow, TextOverflow.ellipsis);
    });

    testWidgets('creates styled Text with selectionColor and shadow',
        (tester) async {
      const str = 'With shadow';
      final shadow = Shadow(color: Colors.black, offset: Offset(1, 1));
      final widget = str.styledText(
        shadows: [shadow],
        selectionColor: Colors.purple,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final textWidget = tester.widget<Text>(find.byType(Text));
      expect(textWidget.selectionColor, Colors.purple);
      expect(textWidget.style!.shadows!.first.color, Colors.black);
    });

    testWidgets('uses inherit flag and package values correctly',
        (tester) async {
      const str = 'With inherit and package';
      final widget = str.styledText(
        fontFamily: 'MyFont',
        inherit: false,
      );

      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          child: widget,
        ),
      );

      final textWidget = tester.widget<Text>(find.byType(Text));
      final style = textWidget.style!;
      expect(style.inherit, false);
    });
  });
}
