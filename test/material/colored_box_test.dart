import 'package:exui/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BoxColorsExtension applies correct material colors',
      (tester) async {
    final widget = const Text('test');

    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            widget.redBox(),
            widget.redAccentBox(),
            widget.greenBox(),
            widget.greenAccentBox(),
            widget.blueBox(),
            widget.blueAccentBox(),
            widget.yellowBox(),
            widget.yellowAccentBox(),
            widget.orangeBox(),
            widget.orangeAccentBox(),
            widget.purpleBox(),
            widget.purpleAccentBox(),
            widget.deepPurpleBox(),
            widget.deepPurpleAccentBox(),
            widget.pinkBox(),
            widget.pinkAccentBox(),
            widget.brownBox(),
            widget.tealBox(),
            widget.tealAccentBox(),
            widget.cyanBox(),
            widget.cyanAccentBox(),
            widget.lightBlueBox(),
            widget.lightBlueAccentBox(),
            widget.lightGreenBox(),
            widget.lightGreenAccentBox(),
            widget.limeBox(),
            widget.limeAccentBox(),
            widget.greyBox(),
            widget.blackBox(),
            widget.whiteBox(),
          ],
        ),
      ),
    );

    final expectedColors = [
      Colors.red,
      Colors.redAccent,
      Colors.green,
      Colors.greenAccent,
      Colors.blue,
      Colors.blueAccent,
      Colors.yellow,
      Colors.yellowAccent,
      Colors.orange,
      Colors.orangeAccent,
      Colors.purple,
      Colors.purpleAccent,
      Colors.deepPurple,
      Colors.deepPurpleAccent,
      Colors.pink,
      Colors.pinkAccent,
      Colors.brown,
      Colors.teal,
      Colors.tealAccent,
      Colors.cyan,
      Colors.cyanAccent,
      Colors.lightBlue,
      Colors.lightBlueAccent,
      Colors.lightGreen,
      Colors.lightGreenAccent,
      Colors.lime,
      Colors.limeAccent,
      Colors.grey,
      Colors.black,
      Colors.white,
    ];

    final coloredBoxes = find.byType(ColoredBox);
    expect(coloredBoxes, findsNWidgets(expectedColors.length));

    for (int i = 0; i < expectedColors.length; i++) {
      final box = tester.widget<ColoredBox>(coloredBoxes.at(i));
      expect(box.color, expectedColors[i]);
      expect(box.child, isA<Text>());
      expect((box.child as Text).data, 'test');
    }
  });
}
