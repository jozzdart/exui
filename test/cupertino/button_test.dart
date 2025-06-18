import 'package:exui/src/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

extension CupertinoButtonWidgetExtensionsTest on Widget {
  CupertinoButton getButtonFromCupertinoButton({
    required void Function()? onPressed,
  }) =>
      cupertinoButton(onPressed: onPressed);

  CupertinoButton getButtonFromFilledButton({
    required void Function()? onPressed,
  }) =>
      cupertinoFilledButton(onPressed: onPressed);

  CupertinoButton getButtonFromTintedButton({
    required void Function()? onPressed,
  }) =>
      cupertinoTintedButton(onPressed: onPressed);
}

void main() {
  testWidgets(
      'cupertinoButton creates CupertinoButton with correct child and onPressed',
      (tester) async {
    bool pressed = false;
    final widget = Text('Tap me').cupertinoButton(
      onPressed: () => pressed = true,
    );

    await tester.pumpWidget(CupertinoApp(home: widget));

    expect(find.text('Tap me'), findsOneWidget);
    await tester.tap(find.byType(CupertinoButton));
    expect(pressed, true);
  });

  testWidgets('cupertinoFilledButton creates filled button with correct child',
      (tester) async {
    bool called = false;
    final widget = Text('Submit').cupertinoFilledButton(
      onPressed: () => called = true,
    );

    await tester.pumpWidget(CupertinoApp(home: widget));
    expect(find.text('Submit'), findsOneWidget);
    await tester.tap(find.byType(CupertinoButton));
    expect(called, true);
  });

  testWidgets('cupertinoTintedButton uses tint color correctly',
      (tester) async {
    final color = CupertinoColors.systemPink;
    final widget = Text('Share').cupertinoTintedButton(
      color: color,
      onPressed: () {},
    );

    await tester.pumpWidget(CupertinoApp(home: widget));
    final btn = tester.widget<CupertinoButton>(find.byType(CupertinoButton));
    expect(btn.color, color);
  });

  testWidgets('disabled button does not trigger onPressed', (tester) async {
    bool pressed = false;
    final widget = Text('Disabled').cupertinoButton(
      onPressed: null,
    );

    await tester.pumpWidget(CupertinoApp(home: widget));
    await tester.tap(find.byType(CupertinoButton));
    expect(pressed, false); // No change
  });

  testWidgets('cupertinoButton applies borderRadius and alignment',
      (tester) async {
    const radius = BorderRadius.all(Radius.circular(12));
    const align = Alignment.bottomRight;

    final button = Text('Align').cupertinoButton(
      borderRadius: radius,
      alignment: align,
      onPressed: () {},
    );

    expect(button.borderRadius, radius);
    expect(button.alignment, align);
  });

  testWidgets('cupertinoFilledButton applies sizeStyle and pressedOpacity',
      (tester) async {
    final button = Text('Press').cupertinoFilledButton(
      sizeStyle: CupertinoButtonSize.small,
      pressedOpacity: 0.2,
      onPressed: () {},
    );

    expect(button.sizeStyle, CupertinoButtonSize.small);
    expect(button.pressedOpacity, 0.2);
  });

  testWidgets('cupertinoTintedButton applies disabledColor and autofocus',
      (tester) async {
    final button = Text('Auto').cupertinoTintedButton(
      disabledColor: CupertinoColors.systemGrey,
      autofocus: true,
      onPressed: () {},
    );

    expect(button.disabledColor, CupertinoColors.systemGrey);
    expect(button.autofocus, true);
  });

  testWidgets('cupertinoButton handles focusColor and focusNode',
      (tester) async {
    final node = FocusNode();
    final button = Text('Focus').cupertinoButton(
      focusColor: CupertinoColors.activeBlue,
      focusNode: node,
      onPressed: () {},
    );

    expect(button.focusNode, node);
    expect(button.focusColor, CupertinoColors.activeBlue);
  });

  testWidgets('cupertinoButton calls onLongPress', (tester) async {
    bool longPressed = false;
    final widget = Text('Long Press').cupertinoButton(
      onPressed: () {},
      onLongPress: () => longPressed = true,
    );

    await tester.pumpWidget(CupertinoApp(home: widget));
    await tester.longPress(find.byType(CupertinoButton));
    expect(longPressed, true);
  });
}
