import 'package:flutter/cupertino.dart';

import 'package:exui/src/widget/containers/colored_box.dart';

extension CupertinoBoxColorsExtension on Widget {
  Widget redBox() => coloredBox(CupertinoColors.systemRed);

  Widget destructiveRedBox() => coloredBox(CupertinoColors.destructiveRed);

  Widget greenBox() => coloredBox(CupertinoColors.systemGreen);

  Widget activeGreenBox() => coloredBox(CupertinoColors.activeGreen);

  Widget blueBox() => coloredBox(CupertinoColors.systemBlue);

  Widget activeBlueBox() => coloredBox(CupertinoColors.activeBlue);

  Widget yellowBox() => coloredBox(CupertinoColors.systemYellow);

  Widget orangeBox() => coloredBox(CupertinoColors.systemOrange);

  Widget orangeAccentBox() => coloredBox(CupertinoColors.activeOrange);

  Widget purpleBox() => coloredBox(CupertinoColors.systemPurple);

  Widget pinkBox() => coloredBox(CupertinoColors.systemPink);

  Widget brownBox() => coloredBox(CupertinoColors.systemBrown);

  Widget tealBox() => coloredBox(CupertinoColors.systemTeal);

  Widget cyanBox() => coloredBox(CupertinoColors.systemCyan);

  Widget greyBox() => coloredBox(CupertinoColors.systemGrey);

  Widget blackBox() => coloredBox(CupertinoColors.black);

  Widget whiteBox() => coloredBox(CupertinoColors.white);

  Widget darkGrayBox() => coloredBox(CupertinoColors.darkBackgroundGray);

  Widget lightGrayBox() => coloredBox(CupertinoColors.lightBackgroundGray);
}
