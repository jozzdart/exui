import 'package:flutter/widgets.dart';

/// Extension methods for adding SafeArea to widgets with various configurations.
///
/// This extension provides convenient methods to wrap widgets with SafeArea
/// while maintaining a clean and readable API.
extension SafeAreaExtension on Widget {
  /// Wraps the widget with a SafeArea with customizable padding on all sides.
  ///
  /// Parameters:
  /// * [left] - Whether to add padding on the left side (default: true)
  /// * [top] - Whether to add padding on the top side (default: true)
  /// * [right] - Whether to add padding on the right side (default: true)
  /// * [bottom] - Whether to add padding on the bottom side (default: true)
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget.
  SafeArea safeArea({
    bool left = true,
    bool top = true,
    bool right = true,
    bool bottom = true,
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      SafeArea(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: this,
      );

  /// Wraps the widget with a SafeArea that adds padding on all sides.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with padding on all sides.
  SafeArea safeAreaAll({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds no padding on any side.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with no padding.
  SafeArea safeAreaNone({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        left: false,
        top: false,
        right: false,
        bottom: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on the top side.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with top padding only.
  SafeArea safeAreaOnlyTop({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        top: true,
        right: false,
        bottom: false,
        left: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on the bottom side.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with bottom padding only.
  SafeArea safeAreaOnlyBottom({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        bottom: true,
        right: false,
        left: false,
        top: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on the left side.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with left padding only.
  SafeArea safeAreaOnlyLeft({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        left: true,
        right: false,
        top: false,
        bottom: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on the right side.
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with right padding only.
  SafeArea safeAreaOnlyRight({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        right: true,
        top: false,
        bottom: false,
        left: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on horizontal sides (left and right).
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with horizontal padding only.
  SafeArea safeAreaOnlyHorizontal({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        top: false,
        right: true,
        bottom: false,
        left: true,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );

  /// Wraps the widget with a SafeArea that adds padding only on vertical sides (top and bottom).
  ///
  /// Parameters:
  /// * [minimum] - The minimum padding to apply (default: EdgeInsets.zero)
  /// * [maintainBottomViewPadding] - Whether to maintain bottom view padding (default: false)
  ///
  /// Returns a [SafeArea] widget wrapping the current widget with vertical padding only.
  SafeArea safeAreaOnlyVertical({
    EdgeInsets minimum = EdgeInsets.zero,
    bool maintainBottomViewPadding = false,
  }) =>
      safeArea(
        top: true,
        right: false,
        bottom: true,
        left: false,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
      );
}
