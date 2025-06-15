import 'package:exui/exui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TextExtensions', () {
    testWidgets('textAlign applies correctly', (tester) async {
      final text = Text('test').withTextAlign(TextAlign.center);
      expect(text.textAlign, TextAlign.center);
    });

    testWidgets('textDirection applies correctly', (tester) async {
      final text = Text('test').withTextDirection(TextDirection.rtl);
      expect(text.textDirection, TextDirection.rtl);
    });

    testWidgets('locale applies correctly', (tester) async {
      final locale = Locale('es', 'ES');
      final text = Text('test').withLocale(locale);
      expect(text.locale, locale);
    });

    testWidgets('softWrap applies correctly', (tester) async {
      final text = Text('test').withSoftWrap(false);
      expect(text.softWrap, false);
    });

    testWidgets('overflow applies correctly', (tester) async {
      final text = Text('test').withOverflow(TextOverflow.ellipsis);
      expect(text.overflow, TextOverflow.ellipsis);
    });

    testWidgets('maxLines applies correctly', (tester) async {
      final text = Text('test').withMaxLines(3);
      expect(text.maxLines, 3);
    });

    testWidgets('semanticsLabel applies correctly', (tester) async {
      final text = Text('test').withSemanticsLabel('label');
      expect(text.semanticsLabel, 'label');
    });

    testWidgets('widthBasis applies correctly', (tester) async {
      final text = Text('test').withWidthBasis(TextWidthBasis.parent);
      expect(text.textWidthBasis, TextWidthBasis.parent);
    });

    testWidgets('heightBehavior applies correctly', (tester) async {
      final behavior = TextHeightBehavior();
      final text = Text('test').withHeightBehavior(behavior);
      expect(text.textHeightBehavior, behavior);
    });

    testWidgets('selectionColor applies correctly', (tester) async {
      final color = Colors.red;
      final text = Text('test').withSelectionColor(color);
      expect(text.selectionColor, color);
    });

    testWidgets('strutStyle applies correctly', (tester) async {
      final strutStyle = StrutStyle(fontSize: 10);
      final text = Text('test').withStrutStyle(strutStyle);
      expect(text.strutStyle, strutStyle);
    });

    testWidgets('textScaler applies correctly', (tester) async {
      final scaler = TextScaler.linear(1.5);
      final text = Text('test').withTextScaler(scaler);
      expect(text.textScaler, scaler);
    });

    testWidgets('fontSize applies correctly', (tester) async {
      final text = Text('test').fontSize(20);
      expect(text.style?.fontSize, 20);
    });

    testWidgets('fontWeight applies correctly', (tester) async {
      final text = Text('test').fontWeight(FontWeight.w600);
      expect(text.style?.fontWeight, FontWeight.w600);
    });

    testWidgets('fontStyle applies correctly', (tester) async {
      final text = Text('test').fontStyle(FontStyle.italic);
      expect(text.style?.fontStyle, FontStyle.italic);
    });

    testWidgets('letterSpacing applies correctly', (tester) async {
      final text = Text('test').letterSpacing(1.5);
      expect(text.style?.letterSpacing, 1.5);
    });

    testWidgets('wordSpacing applies correctly', (tester) async {
      final text = Text('test').wordSpacing(2);
      expect(text.style?.wordSpacing, 2);
    });

    testWidgets('height applies correctly', (tester) async {
      final text = Text('test').height(1.8);
      expect(text.style?.height, 1.8);
    });

    testWidgets('foreground and background apply correctly', (tester) async {
      final fg = Paint()..color = Colors.green;
      final bg = Paint()..color = Colors.yellow;
      final text = Text('test').foreground(fg).background(bg);
      expect(text.style?.foreground, fg);
      expect(text.style?.background, bg);
    });

    testWidgets('shadows apply correctly', (tester) async {
      final shadows = [Shadow(blurRadius: 3)];
      final text = Text('test').shadows(shadows);
      expect(text.style?.shadows, shadows);
    });

    testWidgets('fontFeatures and fontVariations apply correctly',
        (tester) async {
      final features = [FontFeature.enable('smcp')];
      final variations = [FontVariation('wght', 400)];
      final text =
          Text('test').fontFeatures(features).fontVariations(variations);
      expect(text.style?.fontFeatures, features);
      expect(text.style?.fontVariations, variations);
    });

    testWidgets('decorations apply correctly', (tester) async {
      final text = Text('test')
          .decoration(TextDecoration.underline)
          .decorationColor(Colors.blue)
          .decorationStyle(TextDecorationStyle.dashed)
          .decorationThickness(3);
      expect(text.style?.decoration, TextDecoration.underline);
      expect(text.style?.decorationColor, Colors.blue);
      expect(text.style?.decorationStyle, TextDecorationStyle.dashed);
      expect(text.style?.decorationThickness, 3);
    });

    testWidgets('debugLabel, fontFamily, fallback, leadingDistribution apply',
        (tester) async {
      final text = Text('test')
          .fontFamily('Roboto')
          .fontFamilyFallback(['Arial', 'Helvetica']).leadingDistribution(
              TextLeadingDistribution.even);
      expect(text.style?.fontFamily, 'Roboto');
      expect(text.style?.fontFamilyFallback, contains('Arial'));
      expect(text.style?.leadingDistribution, TextLeadingDistribution.even);
    });

    testWidgets('bold, italic, underline, strikethrough apply correctly',
        (tester) async {
      final bold = Text('test').bold();
      final italic = Text('test').italic();
      final underline = Text('test').underline();
      final strike = Text('test').strikethrough();

      expect(bold.style?.fontWeight, FontWeight.bold);
      expect(italic.style?.fontStyle, FontStyle.italic);
      expect(underline.style?.decoration, TextDecoration.underline);
      expect(strike.style?.decoration, TextDecoration.lineThrough);
    });

    testWidgets('combo boldItalic, boldUnderline, boldStrikethrough',
        (tester) async {
      final boldItalic = Text('test').boldItalic();
      final boldUnderline = Text('test').boldUnderline();
      final boldStrikethrough = Text('test').boldStrikethrough();

      expect(boldItalic.style?.fontWeight, FontWeight.bold);
      expect(boldItalic.style?.fontStyle, FontStyle.italic);

      expect(boldUnderline.style?.fontWeight, FontWeight.bold);
      expect(boldUnderline.style?.decoration, TextDecoration.underline);

      expect(boldStrikethrough.style?.fontWeight, FontWeight.bold);
      expect(boldStrikethrough.style?.decoration, TextDecoration.lineThrough);
    });
  });
}
