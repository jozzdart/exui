import 'package:flutter/widgets.dart';

/// Extension on [Icon] that provides convenient methods for creating
/// [BottomNavigationBarItem] instances.
///
/// This extension simplifies the process of converting an [Icon] widget
/// into a [BottomNavigationBarItem] for use in bottom navigation bars.
///
/// Example usage:
/// ```dart
/// Icon(Icons.home).bottomNavigationItem(
///   'Home',
///   activeIcon: Icon(Icons.home_filled),
///   tooltip: 'Navigate to home screen',
/// )
/// ```
extension BottomNavigationItemIconExtension on Icon {
  /// Creates a [BottomNavigationBarItem] using this icon.
  ///
  /// This method converts the current [Icon] instance into a
  /// [BottomNavigationBarItem] with the specified [label] and optional
  /// customization parameters.
  ///
  /// Parameters:
  /// * [label] - The text label displayed below the icon in the navigation bar.
  ///   This is required and should be descriptive of the navigation destination.
  /// * [activeIcon] - Optional widget to display when this navigation item is
  ///   selected. If not provided, the original icon will be used for both
  ///   active and inactive states.
  /// * [backgroundColor] - Optional background color for this navigation item.
  ///   This is typically used with [BottomNavigationBarType.shifting].
  /// * [tooltip] - Optional tooltip text that appears when the user long-presses
  ///   the navigation item. Useful for accessibility and providing additional
  ///   context.
  ///
  /// Returns a [BottomNavigationBarItem] configured with this icon and the
  /// provided parameters.
  ///
  /// Example:
  /// ```dart
  /// // Basic usage
  /// Icon(Icons.settings).bottomNavigationItem('Settings')
  ///
  /// // With all optional parameters
  /// Icon(Icons.favorite_border).bottomNavigationItem(
  ///   'Favorites',
  ///   activeIcon: Icon(Icons.favorite),
  ///   backgroundColor: Colors.red,
  ///   tooltip: 'View your favorite items',
  /// )
  /// ```
  BottomNavigationBarItem bottomNavigationItem(
    String label, {
    Widget? activeIcon,
    Color? backgroundColor,
    String? tooltip,
  }) =>
      BottomNavigationBarItem(
        icon: this,
        label: label,
        activeIcon: activeIcon,
        backgroundColor: backgroundColor,
        tooltip: tooltip,
      );
}
