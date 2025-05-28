import 'package:flutter/material.dart';

extension ColoredBoxExtension on Widget {
  Widget coloredBox(
    Color color,
  ) =>
      ColoredBox(
        color: color,
        child: this,
      );

  Widget get redBox => coloredBox(Colors.red);

  Widget get redAccentBox => coloredBox(Colors.redAccent);

  Widget get greenBox => coloredBox(Colors.green);

  Widget get greenAccentBox => coloredBox(Colors.greenAccent);

  Widget get blueBox => coloredBox(Colors.blue);

  Widget get blueAccentBox => coloredBox(Colors.blueAccent);

  Widget get yellowBox => coloredBox(Colors.yellow);

  Widget get yellowAccentBox => coloredBox(Colors.yellowAccent);

  Widget get orangeBox => coloredBox(Colors.orange);

  Widget get orangeAccentBox => coloredBox(Colors.orangeAccent);

  Widget get purpleBox => coloredBox(Colors.purple);

  Widget get purpleAccentBox => coloredBox(Colors.purpleAccent);

  Widget get deepPurpleBox => coloredBox(Colors.deepPurple);

  Widget get deepPurpleAccentBox => coloredBox(Colors.deepPurpleAccent);

  Widget get pinkBox => coloredBox(Colors.pink);

  Widget get pinkAccentBox => coloredBox(Colors.pinkAccent);

  Widget get brownBox => coloredBox(Colors.brown);

  Widget get tealBox => coloredBox(Colors.teal);

  Widget get tealAccentBox => coloredBox(Colors.tealAccent);

  Widget get cyanBox => coloredBox(Colors.cyan);

  Widget get cyanAccentBox => coloredBox(Colors.cyanAccent);

  Widget get lightBlueBox => coloredBox(Colors.lightBlue);

  Widget get lightBlueAccentBox => coloredBox(Colors.lightBlueAccent);

  Widget get lightGreenBox => coloredBox(Colors.lightGreen);

  Widget get lightGreenAccentBox => coloredBox(Colors.lightGreenAccent);

  Widget get limeBox => coloredBox(Colors.lime);

  Widget get limeAccentBox => coloredBox(Colors.limeAccent);

  Widget get greyBox => coloredBox(Colors.grey);

  Widget get blackBox => coloredBox(Colors.black);

  Widget get whiteBox => coloredBox(Colors.white);
}
