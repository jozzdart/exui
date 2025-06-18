import 'package:exui/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CupertinoBoxColorsExtension applies correct colors',
      (tester) async {
    final widget = const Text('test');

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            widget.redBox(),
            widget.destructiveRedBox(),
            widget.greenBox(),
            widget.activeGreenBox(),
            widget.blueBox(),
            widget.activeBlueBox(),
            widget.yellowBox(),
            widget.orangeBox(),
            widget.orangeAccentBox(),
            widget.purpleBox(),
            widget.pinkBox(),
            widget.brownBox(),
            widget.tealBox(),
            widget.cyanBox(),
            widget.greyBox(),
            widget.blackBox(),
            widget.whiteBox(),
            widget.darkGrayBox(),
            widget.lightGrayBox(),
          ],
        ),
      ),
    );

    final colors = [
      CupertinoColors.systemRed,
      CupertinoColors.destructiveRed,
      CupertinoColors.systemGreen,
      CupertinoColors.activeGreen,
      CupertinoColors.systemBlue,
      CupertinoColors.activeBlue,
      CupertinoColors.systemYellow,
      CupertinoColors.systemOrange,
      CupertinoColors.activeOrange,
      CupertinoColors.systemPurple,
      CupertinoColors.systemPink,
      CupertinoColors.systemBrown,
      CupertinoColors.systemTeal,
      CupertinoColors.systemCyan,
      CupertinoColors.systemGrey,
      CupertinoColors.black,
      CupertinoColors.white,
      CupertinoColors.darkBackgroundGray,
      CupertinoColors.lightBackgroundGray,
    ];

    final coloredBoxes = find.byType(ColoredBox);
    expect(coloredBoxes, findsNWidgets(colors.length));

    for (int i = 0; i < colors.length; i++) {
      final box = tester.widget<ColoredBox>(coloredBoxes.at(i));
      expect(box.color, equals(colors[i]));
      expect(box.child, isA<Text>());
      expect((box.child as Text).data, equals('test'));
    }
  });
}
