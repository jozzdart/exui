import 'package:flutter/material.dart';

/// Extension on [List<BottomNavigationBarItem>] that provides convenient methods
/// for creating [BottomNavigationBar] widgets.
///
/// This extension simplifies the creation of bottom navigation bars by allowing
/// direct method calls on a list of navigation bar items, reducing boilerplate
/// code and improving readability.
///
/// Example usage:
/// ```dart
/// final items = [
///   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
///   BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
/// ];
///
/// final bottomBar = items.bottomNavigationBar(
///   currentIndex: 0,
///   onTap: (index) => print('Tapped item $index'),
/// );
/// ```
extension BottomNavigationBarExtensions on List<BottomNavigationBarItem> {
  /// Creates a [BottomNavigationBar] widget using this list as the items.
  ///
  /// This method provides a convenient way to create a bottom navigation bar
  /// with customizable appearance and behavior options. All parameters correspond
  /// directly to the [BottomNavigationBar] constructor parameters.
  ///
  /// Parameters:
  /// * [onTap] - Callback function called when a navigation item is tapped.
  ///   Receives the index of the tapped item.
  /// * [currentIndex] - The index of the currently selected item. Defaults to 0.
  /// * [elevation] - The elevation of the bottom navigation bar. If null,
  ///   uses the theme's default elevation.
  /// * [type] - Defines the layout and behavior of the bottom navigation bar.
  ///   Can be [BottomNavigationBarType.fixed] or [BottomNavigationBarType.shifting].
  /// * [fixedColor] - The color of the selected item when [type] is fixed.
  ///   Deprecated in favor of [selectedItemColor].
  /// * [backgroundColor] - The background color of the bottom navigation bar.
  /// * [iconSize] - The size of all icons in the bottom navigation bar.
  ///   Defaults to 24.0.
  /// * [selectedItemColor] - The color of the selected navigation item's icon
  ///   and label.
  /// * [unselectedItemColor] - The color of unselected navigation items' icons
  ///   and labels.
  /// * [selectedIconTheme] - The theme for selected navigation item icons.
  /// * [unselectedIconTheme] - The theme for unselected navigation item icons.
  /// * [selectedFontSize] - The font size of selected navigation item labels.
  ///   Defaults to 14.0.
  /// * [unselectedFontSize] - The font size of unselected navigation item labels.
  ///   Defaults to 12.0.
  /// * [selectedLabelStyle] - The text style for selected navigation item labels.
  /// * [unselectedLabelStyle] - The text style for unselected navigation item labels.
  /// * [showSelectedLabels] - Whether to show labels for selected items.
  /// * [showUnselectedLabels] - Whether to show labels for unselected items.
  /// * [mouseCursor] - The cursor to display when hovering over navigation items.
  /// * [enableFeedback] - Whether to provide haptic/audio feedback on tap.
  /// * [landscapeLayout] - Defines the layout of the bottom navigation bar
  ///   in landscape orientation.
  /// * [useLegacyColorScheme] - Whether to use the legacy color scheme.
  ///   Defaults to true for backward compatibility.
  ///
  /// Returns a configured [BottomNavigationBar] widget.
  ///
  /// Example:
  /// ```dart
  /// final navigationBar = [
  ///   BottomNavigationBarItem(
  ///     icon: Icon(Icons.home),
  ///     label: 'Home',
  ///   ),
  ///   BottomNavigationBarItem(
  ///     icon: Icon(Icons.business),
  ///     label: 'Business',
  ///   ),
  /// ].bottomNavigationBar(
  ///   currentIndex: _selectedIndex,
  ///   selectedItemColor: Colors.amber[800],
  ///   onTap: _onItemTapped,
  /// );
  /// ```
  BottomNavigationBar bottomNavigationBar({
    void Function(int)? onTap,
    int currentIndex = 0,
    double? elevation,
    BottomNavigationBarType? type,
    Color? fixedColor,
    Color? backgroundColor,
    double iconSize = 24.0,
    Color? selectedItemColor,
    Color? unselectedItemColor,
    IconThemeData? selectedIconTheme,
    IconThemeData? unselectedIconTheme,
    double selectedFontSize = 14.0,
    double unselectedFontSize = 12.0,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
    bool? showSelectedLabels,
    bool? showUnselectedLabels,
    MouseCursor? mouseCursor,
    bool? enableFeedback,
    BottomNavigationBarLandscapeLayout? landscapeLayout,
    bool useLegacyColorScheme = true,
  }) =>
      BottomNavigationBar(
        items: this,
        onTap: onTap,
        currentIndex: currentIndex,
        elevation: elevation,
        type: type,
        fixedColor: fixedColor,
        backgroundColor: backgroundColor,
        iconSize: iconSize,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        selectedIconTheme: selectedIconTheme,
        unselectedIconTheme: unselectedIconTheme,
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        showSelectedLabels: showSelectedLabels,
        showUnselectedLabels: showUnselectedLabels,
        mouseCursor: mouseCursor,
        enableFeedback: enableFeedback,
        landscapeLayout: landscapeLayout,
        useLegacyColorScheme: useLegacyColorScheme,
      );
}
