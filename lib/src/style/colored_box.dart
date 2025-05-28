import 'package:flutter/material.dart';

extension ColoredBoxExtension on Widget {
  Widget inColoredBox(
    Color color,
  ) =>
      ColoredBox(
        color: color,
        child: this,
      );

  Widget get inRedBox => inColoredBox(Colors.red);

  Widget get inRedAccentBox => inColoredBox(Colors.redAccent);

  Widget get inGreenBox => inColoredBox(Colors.green);

  Widget get inGreenAccentBox => inColoredBox(Colors.greenAccent);

  Widget get inBlueBox => inColoredBox(Colors.blue);

  Widget get inBlueAccentBox => inColoredBox(Colors.blueAccent);

  Widget get inYellowBox => inColoredBox(Colors.yellow);

  Widget get inYellowAccentBox => inColoredBox(Colors.yellowAccent);

  Widget get inOrangeBox => inColoredBox(Colors.orange);

  Widget get inOrangeAccentBox => inColoredBox(Colors.orangeAccent);

  Widget get inPurpleBox => inColoredBox(Colors.purple);

  Widget get inPurpleAccentBox => inColoredBox(Colors.purpleAccent);

  Widget get inDeepPurpleBox => inColoredBox(Colors.deepPurple);

  Widget get inDeepPurpleAccentBox => inColoredBox(Colors.deepPurpleAccent);

  Widget get inPinkBox => inColoredBox(Colors.pink);

  Widget get inPinkAccentBox => inColoredBox(Colors.pinkAccent);

  Widget get inBrownBox => inColoredBox(Colors.brown);

  Widget get inTealBox => inColoredBox(Colors.teal);

  Widget get inTealAccentBox => inColoredBox(Colors.tealAccent);

  Widget get inCyanBox => inColoredBox(Colors.cyan);

  Widget get inCyanAccentBox => inColoredBox(Colors.cyanAccent);

  Widget get inLightBlueBox => inColoredBox(Colors.lightBlue);

  Widget get inLightBlueAccentBox => inColoredBox(Colors.lightBlueAccent);

  Widget get inLightGreenBox => inColoredBox(Colors.lightGreen);

  Widget get inLightGreenAccentBox => inColoredBox(Colors.lightGreenAccent);

  Widget get inLimeBox => inColoredBox(Colors.lime);

  Widget get inLimeAccentBox => inColoredBox(Colors.limeAccent);

  Widget get inGreyBox => inColoredBox(Colors.grey);

  Widget get inBlackBox => inColoredBox(Colors.black);

  Widget get inWhiteBox => inColoredBox(Colors.white);
}
