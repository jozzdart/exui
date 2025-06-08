import 'package:flutter/material.dart';

import 'package:exui/src/widget/containers/colored_box.dart';

/// Extension methods for [Widget] that provide convenient colored box wrappers.
///
/// This extension adds methods to any [Widget] to quickly wrap it in a [ColoredBox]
/// with predefined Material Design colors. Each method creates a colored background
/// container around the widget using Flutter's standard color palette.
///
/// Example usage:
/// ```dart
/// Text('Hello World').redBox()
/// Icon(Icons.star).blueAccentBox()
/// Container().greyBox()
/// ```
///
/// All methods return a [ColoredBox] widget that wraps the original widget
/// with the specified background color.
extension BoxColorsExtension on Widget {
  /// Wraps the widget in a red colored box.
  ///
  /// Uses [Colors.red] as the background color.
  ///
  /// Returns a [ColoredBox] with red background containing this widget.
  ColoredBox redBox() => coloredBox(Colors.red);

  /// Wraps the widget in a red accent colored box.
  ///
  /// Uses [Colors.redAccent] as the background color, which is typically
  /// a brighter, more vibrant version of red.
  ///
  /// Returns a [ColoredBox] with red accent background containing this widget.
  ColoredBox redAccentBox() => coloredBox(Colors.redAccent);

  /// Wraps the widget in a green colored box.
  ///
  /// Uses [Colors.green] as the background color.
  ///
  /// Returns a [ColoredBox] with green background containing this widget.
  ColoredBox greenBox() => coloredBox(Colors.green);

  /// Wraps the widget in a green accent colored box.
  ///
  /// Uses [Colors.greenAccent] as the background color, which is typically
  /// a brighter, more vibrant version of green.
  ///
  /// Returns a [ColoredBox] with green accent background containing this widget.
  ColoredBox greenAccentBox() => coloredBox(Colors.greenAccent);

  /// Wraps the widget in a blue colored box.
  ///
  /// Uses [Colors.blue] as the background color.
  ///
  /// Returns a [ColoredBox] with blue background containing this widget.
  ColoredBox blueBox() => coloredBox(Colors.blue);

  /// Wraps the widget in a blue accent colored box.
  ///
  /// Uses [Colors.blueAccent] as the background color, which is typically
  /// a brighter, more vibrant version of blue.
  ///
  /// Returns a [ColoredBox] with blue accent background containing this widget.
  ColoredBox blueAccentBox() => coloredBox(Colors.blueAccent);

  /// Wraps the widget in a yellow colored box.
  ///
  /// Uses [Colors.yellow] as the background color.
  ///
  /// Returns a [ColoredBox] with yellow background containing this widget.
  ColoredBox yellowBox() => coloredBox(Colors.yellow);

  /// Wraps the widget in a yellow accent colored box.
  ///
  /// Uses [Colors.yellowAccent] as the background color, which is typically
  /// a brighter, more vibrant version of yellow.
  ///
  /// Returns a [ColoredBox] with yellow accent background containing this widget.
  ColoredBox yellowAccentBox() => coloredBox(Colors.yellowAccent);

  /// Wraps the widget in an orange colored box.
  ///
  /// Uses [Colors.orange] as the background color.
  ///
  /// Returns a [ColoredBox] with orange background containing this widget.
  ColoredBox orangeBox() => coloredBox(Colors.orange);

  /// Wraps the widget in an orange accent colored box.
  ///
  /// Uses [Colors.orangeAccent] as the background color, which is typically
  /// a brighter, more vibrant version of orange.
  ///
  /// Returns a [ColoredBox] with orange accent background containing this widget.
  ColoredBox orangeAccentBox() => coloredBox(Colors.orangeAccent);

  /// Wraps the widget in a purple colored box.
  ///
  /// Uses [Colors.purple] as the background color.
  ///
  /// Returns a [ColoredBox] with purple background containing this widget.
  ColoredBox purpleBox() => coloredBox(Colors.purple);

  /// Wraps the widget in a purple accent colored box.
  ///
  /// Uses [Colors.purpleAccent] as the background color, which is typically
  /// a brighter, more vibrant version of purple.
  ///
  /// Returns a [ColoredBox] with purple accent background containing this widget.
  ColoredBox purpleAccentBox() => coloredBox(Colors.purpleAccent);

  /// Wraps the widget in a deep purple colored box.
  ///
  /// Uses [Colors.deepPurple] as the background color, which is a darker
  /// shade of purple.
  ///
  /// Returns a [ColoredBox] with deep purple background containing this widget.
  ColoredBox deepPurpleBox() => coloredBox(Colors.deepPurple);

  /// Wraps the widget in a deep purple accent colored box.
  ///
  /// Uses [Colors.deepPurpleAccent] as the background color, which is typically
  /// a brighter, more vibrant version of deep purple.
  ///
  /// Returns a [ColoredBox] with deep purple accent background containing this widget.
  ColoredBox deepPurpleAccentBox() => coloredBox(Colors.deepPurpleAccent);

  /// Wraps the widget in a pink colored box.
  ///
  /// Uses [Colors.pink] as the background color.
  ///
  /// Returns a [ColoredBox] with pink background containing this widget.
  ColoredBox pinkBox() => coloredBox(Colors.pink);

  /// Wraps the widget in a pink accent colored box.
  ///
  /// Uses [Colors.pinkAccent] as the background color, which is typically
  /// a brighter, more vibrant version of pink.
  ///
  /// Returns a [ColoredBox] with pink accent background containing this widget.
  ColoredBox pinkAccentBox() => coloredBox(Colors.pinkAccent);

  /// Wraps the widget in a brown colored box.
  ///
  /// Uses [Colors.brown] as the background color.
  ///
  /// Returns a [ColoredBox] with brown background containing this widget.
  ColoredBox brownBox() => coloredBox(Colors.brown);

  /// Wraps the widget in a teal colored box.
  ///
  /// Uses [Colors.teal] as the background color.
  ///
  /// Returns a [ColoredBox] with teal background containing this widget.
  ColoredBox tealBox() => coloredBox(Colors.teal);

  /// Wraps the widget in a teal accent colored box.
  ///
  /// Uses [Colors.tealAccent] as the background color, which is typically
  /// a brighter, more vibrant version of teal.
  ///
  /// Returns a [ColoredBox] with teal accent background containing this widget.
  ColoredBox tealAccentBox() => coloredBox(Colors.tealAccent);

  /// Wraps the widget in a cyan colored box.
  ///
  /// Uses [Colors.cyan] as the background color.
  ///
  /// Returns a [ColoredBox] with cyan background containing this widget.
  ColoredBox cyanBox() => coloredBox(Colors.cyan);

  /// Wraps the widget in a cyan accent colored box.
  ///
  /// Uses [Colors.cyanAccent] as the background color, which is typically
  /// a brighter, more vibrant version of cyan.
  ///
  /// Returns a [ColoredBox] with cyan accent background containing this widget.
  ColoredBox cyanAccentBox() => coloredBox(Colors.cyanAccent);

  /// Wraps the widget in a light blue colored box.
  ///
  /// Uses [Colors.lightBlue] as the background color, which is a lighter
  /// shade of blue.
  ///
  /// Returns a [ColoredBox] with light blue background containing this widget.
  ColoredBox lightBlueBox() => coloredBox(Colors.lightBlue);

  /// Wraps the widget in a light blue accent colored box.
  ///
  /// Uses [Colors.lightBlueAccent] as the background color, which is typically
  /// a brighter, more vibrant version of light blue.
  ///
  /// Returns a [ColoredBox] with light blue accent background containing this widget.
  ColoredBox lightBlueAccentBox() => coloredBox(Colors.lightBlueAccent);

  /// Wraps the widget in a light green colored box.
  ///
  /// Uses [Colors.lightGreen] as the background color, which is a lighter
  /// shade of green.
  ///
  /// Returns a [ColoredBox] with light green background containing this widget.
  ColoredBox lightGreenBox() => coloredBox(Colors.lightGreen);

  /// Wraps the widget in a light green accent colored box.
  ///
  /// Uses [Colors.lightGreenAccent] as the background color, which is typically
  /// a brighter, more vibrant version of light green.
  ///
  /// Returns a [ColoredBox] with light green accent background containing this widget.
  ColoredBox lightGreenAccentBox() => coloredBox(Colors.lightGreenAccent);

  /// Wraps the widget in a lime colored box.
  ///
  /// Uses [Colors.lime] as the background color.
  ///
  /// Returns a [ColoredBox] with lime background containing this widget.
  ColoredBox limeBox() => coloredBox(Colors.lime);

  /// Wraps the widget in a lime accent colored box.
  ///
  /// Uses [Colors.limeAccent] as the background color, which is typically
  /// a brighter, more vibrant version of lime.
  ///
  /// Returns a [ColoredBox] with lime accent background containing this widget.
  ColoredBox limeAccentBox() => coloredBox(Colors.limeAccent);

  /// Wraps the widget in a grey colored box.
  ///
  /// Uses [Colors.grey] as the background color.
  ///
  /// Returns a [ColoredBox] with grey background containing this widget.
  ColoredBox greyBox() => coloredBox(Colors.grey);

  /// Wraps the widget in a black colored box.
  ///
  /// Uses [Colors.black] as the background color.
  ///
  /// Returns a [ColoredBox] with black background containing this widget.
  ColoredBox blackBox() => coloredBox(Colors.black);

  /// Wraps the widget in a white colored box.
  ///
  /// Uses [Colors.white] as the background color.
  ///
  /// Returns a [ColoredBox] with white background containing this widget.
  ColoredBox whiteBox() => coloredBox(Colors.white);
}
