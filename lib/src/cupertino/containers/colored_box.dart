import 'package:flutter/cupertino.dart';

import 'package:exui/src/widget/containers/colored_box.dart';

/// Extension on [Widget] that provides convenient methods for wrapping widgets
/// in [ColoredBox] containers with predefined Cupertino system colors.
///
/// This extension simplifies the process of adding colored backgrounds to widgets
/// by providing semantic method names that correspond to iOS system colors.
/// All methods return a [ColoredBox] widget that wraps the current widget
/// with the specified background color.
///
/// Example usage:
/// ```dart
/// Text('Hello World')
///   .redBox()        // Wraps text with red background
///   .padding(8.0);   // Can be chained with other extensions
/// ```
///
/// The colors used are adaptive and will automatically adjust based on the
/// current brightness mode (light/dark) when applicable.
extension CupertinoBoxColorsExtension on Widget {
  /// Wraps the widget in a [ColoredBox] with system red color.
  ///
  /// Uses [CupertinoColors.systemRed] which adapts to light/dark mode.
  /// This is the standard red color used throughout iOS interfaces.
  ///
  /// Returns a [ColoredBox] containing the current widget with red background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.heart).redBox()
  /// ```
  ColoredBox redBox() => coloredBox(CupertinoColors.systemRed);

  /// Wraps the widget in a [ColoredBox] with destructive red color.
  ///
  /// Uses [CupertinoColors.destructiveRed] which is specifically designed
  /// for destructive actions like delete buttons or error states.
  /// This color is more vibrant than system red and indicates danger.
  ///
  /// Returns a [ColoredBox] containing the current widget with destructive red background.
  ///
  /// Example:
  /// ```dart
  /// Text('Delete').destructiveRedBox()
  /// ```
  ColoredBox destructiveRedBox() => coloredBox(CupertinoColors.destructiveRed);

  /// Wraps the widget in a [ColoredBox] with system green color.
  ///
  /// Uses [CupertinoColors.systemGreen] which adapts to light/dark mode.
  /// This is the standard green color used throughout iOS interfaces,
  /// commonly used for success states or positive actions.
  ///
  /// Returns a [ColoredBox] containing the current widget with green background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.checkmark).greenBox()
  /// ```
  ColoredBox greenBox() => coloredBox(CupertinoColors.systemGreen);

  /// Wraps the widget in a [ColoredBox] with active green color.
  ///
  /// Uses [CupertinoColors.activeGreen] which is a more vibrant green
  /// typically used for active states, selected items, or call-to-action elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with active green background.
  ///
  /// Example:
  /// ```dart
  /// Text('Active').activeGreenBox()
  /// ```
  ColoredBox activeGreenBox() => coloredBox(CupertinoColors.activeGreen);

  /// Wraps the widget in a [ColoredBox] with system blue color.
  ///
  /// Uses [CupertinoColors.systemBlue] which adapts to light/dark mode.
  /// This is the standard blue color used throughout iOS interfaces,
  /// commonly used for links, primary actions, and informational elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with blue background.
  ///
  /// Example:
  /// ```dart
  /// Text('Learn More').blueBox()
  /// ```
  ColoredBox blueBox() => coloredBox(CupertinoColors.systemBlue);

  /// Wraps the widget in a [ColoredBox] with active blue color.
  ///
  /// Uses [CupertinoColors.activeBlue] which is a more vibrant blue
  /// typically used for active states, pressed buttons, or highlighted elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with active blue background.
  ///
  /// Example:
  /// ```dart
  /// CupertinoButton(child: Text('Press Me')).activeBlueBox()
  /// ```
  ColoredBox activeBlueBox() => coloredBox(CupertinoColors.activeBlue);

  /// Wraps the widget in a [ColoredBox] with system yellow color.
  ///
  /// Uses [CupertinoColors.systemYellow] which adapts to light/dark mode.
  /// This is the standard yellow color used throughout iOS interfaces,
  /// commonly used for warnings or attention-grabbing elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with yellow background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.exclamationmark_triangle).yellowBox()
  /// ```
  ColoredBox yellowBox() => coloredBox(CupertinoColors.systemYellow);

  /// Wraps the widget in a [ColoredBox] with system orange color.
  ///
  /// Uses [CupertinoColors.systemOrange] which adapts to light/dark mode.
  /// This is the standard orange color used throughout iOS interfaces,
  /// often used for secondary actions or warm accent colors.
  ///
  /// Returns a [ColoredBox] containing the current widget with orange background.
  ///
  /// Example:
  /// ```dart
  /// Text('Featured').orangeBox()
  /// ```
  ColoredBox orangeBox() => coloredBox(CupertinoColors.systemOrange);

  /// Wraps the widget in a [ColoredBox] with active orange color.
  ///
  /// Uses [CupertinoColors.activeOrange] which is a more vibrant orange
  /// typically used for active states, selected items, or emphasized elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with active orange background.
  ///
  /// Example:
  /// ```dart
  /// Text('Hot Deal').orangeAccentBox()
  /// ```
  ColoredBox orangeAccentBox() => coloredBox(CupertinoColors.activeOrange);

  /// Wraps the widget in a [ColoredBox] with system purple color.
  ///
  /// Uses [CupertinoColors.systemPurple] which adapts to light/dark mode.
  /// This is the standard purple color used throughout iOS interfaces,
  /// often used for creative or premium features.
  ///
  /// Returns a [ColoredBox] containing the current widget with purple background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.star).purpleBox()
  /// ```
  ColoredBox purpleBox() => coloredBox(CupertinoColors.systemPurple);

  /// Wraps the widget in a [ColoredBox] with system pink color.
  ///
  /// Uses [CupertinoColors.systemPink] which adapts to light/dark mode.
  /// This is the standard pink color used throughout iOS interfaces,
  /// often used for health-related features or feminine-coded elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with pink background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.heart_fill).pinkBox()
  /// ```
  ColoredBox pinkBox() => coloredBox(CupertinoColors.systemPink);

  /// Wraps the widget in a [ColoredBox] with system brown color.
  ///
  /// Uses [CupertinoColors.systemBrown] which adapts to light/dark mode.
  /// This is the standard brown color used throughout iOS interfaces,
  /// often used for earth-toned or natural-themed elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with brown background.
  ///
  /// Example:
  /// ```dart
  /// Text('Natural').brownBox()
  /// ```
  ColoredBox brownBox() => coloredBox(CupertinoColors.systemBrown);

  /// Wraps the widget in a [ColoredBox] with system teal color.
  ///
  /// Uses [CupertinoColors.systemTeal] which adapts to light/dark mode.
  /// This is the standard teal color used throughout iOS interfaces,
  /// often used for communication or water-themed elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with teal background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.phone).tealBox()
  /// ```
  ColoredBox tealBox() => coloredBox(CupertinoColors.systemTeal);

  /// Wraps the widget in a [ColoredBox] with system cyan color.
  ///
  /// Uses [CupertinoColors.systemCyan] which adapts to light/dark mode.
  /// This is the standard cyan color used throughout iOS interfaces,
  /// often used for technology or digital-themed elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with cyan background.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.wifi).cyanBox()
  /// ```
  ColoredBox cyanBox() => coloredBox(CupertinoColors.systemCyan);

  /// Wraps the widget in a [ColoredBox] with system grey color.
  ///
  /// Uses [CupertinoColors.systemGrey] which adapts to light/dark mode.
  /// This is the standard grey color used throughout iOS interfaces,
  /// commonly used for secondary text, disabled states, or neutral elements.
  ///
  /// Returns a [ColoredBox] containing the current widget with grey background.
  ///
  /// Example:
  /// ```dart
  /// Text('Disabled').greyBox()
  /// ```
  ColoredBox greyBox() => coloredBox(CupertinoColors.systemGrey);

  /// Wraps the widget in a [ColoredBox] with black color.
  ///
  /// Uses [CupertinoColors.black] which provides a pure black background.
  /// This color does not adapt to light/dark mode and remains consistently black.
  ///
  /// Returns a [ColoredBox] containing the current widget with black background.
  ///
  /// Example:
  /// ```dart
  /// Text('Dark Mode', style: TextStyle(color: Colors.white)).blackBox()
  /// ```
  ColoredBox blackBox() => coloredBox(CupertinoColors.black);

  /// Wraps the widget in a [ColoredBox] with white color.
  ///
  /// Uses [CupertinoColors.white] which provides a pure white background.
  /// This color does not adapt to light/dark mode and remains consistently white.
  ///
  /// Returns a [ColoredBox] containing the current widget with white background.
  ///
  /// Example:
  /// ```dart
  /// Text('Light Mode').whiteBox()
  /// ```
  ColoredBox whiteBox() => coloredBox(CupertinoColors.white);

  /// Wraps the widget in a [ColoredBox] with dark background gray color.
  ///
  /// Uses [CupertinoColors.darkBackgroundGray] which provides a dark gray
  /// background suitable for dark mode interfaces or secondary backgrounds.
  ///
  /// Returns a [ColoredBox] containing the current widget with dark gray background.
  ///
  /// Example:
  /// ```dart
  /// Container(child: Text('Dark Section')).darkGrayBox()
  /// ```
  ColoredBox darkGrayBox() => coloredBox(CupertinoColors.darkBackgroundGray);

  /// Wraps the widget in a [ColoredBox] with light background gray color.
  ///
  /// Uses [CupertinoColors.lightBackgroundGray] which provides a light gray
  /// background suitable for light mode interfaces or secondary backgrounds.
  ///
  /// Returns a [ColoredBox] containing the current widget with light gray background.
  ///
  /// Example:
  /// ```dart
  /// Container(child: Text('Light Section')).lightGrayBox()
  /// ```
  ColoredBox lightGrayBox() => coloredBox(CupertinoColors.lightBackgroundGray);
}
