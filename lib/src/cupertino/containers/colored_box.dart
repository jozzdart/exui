import 'package:flutter/cupertino.dart';

import 'package:exui/src/widget/containers/colored_box.dart';

extension CupertinoBoxColorsExtension on Widget {
  ColoredBox redBox() => coloredBox(CupertinoColors.systemRed);

  ColoredBox destructiveRedBox() => coloredBox(CupertinoColors.destructiveRed);

  ColoredBox greenBox() => coloredBox(CupertinoColors.systemGreen);

  ColoredBox activeGreenBox() => coloredBox(CupertinoColors.activeGreen);

  ColoredBox blueBox() => coloredBox(CupertinoColors.systemBlue);

  ColoredBox activeBlueBox() => coloredBox(CupertinoColors.activeBlue);

  ColoredBox yellowBox() => coloredBox(CupertinoColors.systemYellow);

  ColoredBox orangeBox() => coloredBox(CupertinoColors.systemOrange);

  ColoredBox orangeAccentBox() => coloredBox(CupertinoColors.activeOrange);

  ColoredBox purpleBox() => coloredBox(CupertinoColors.systemPurple);

  ColoredBox pinkBox() => coloredBox(CupertinoColors.systemPink);

  ColoredBox brownBox() => coloredBox(CupertinoColors.systemBrown);

  ColoredBox tealBox() => coloredBox(CupertinoColors.systemTeal);

  ColoredBox cyanBox() => coloredBox(CupertinoColors.systemCyan);

  ColoredBox greyBox() => coloredBox(CupertinoColors.systemGrey);

  ColoredBox blackBox() => coloredBox(CupertinoColors.black);

  ColoredBox whiteBox() => coloredBox(CupertinoColors.white);

  ColoredBox darkGrayBox() => coloredBox(CupertinoColors.darkBackgroundGray);

  ColoredBox lightGrayBox() => coloredBox(CupertinoColors.lightBackgroundGray);
}
