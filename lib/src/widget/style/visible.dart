import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient visibility control functionality.
///
/// This extension adds methods to conditionally show or hide widgets based on various
/// conditions. Unlike opacity-based hiding, these methods completely remove the widget
/// from the layout when hidden, replacing it with a [SizedBox.shrink].
///
/// The extension provides both condition-based visibility (visibleIf, visibleIfNot) and
/// null-checking visibility (visibleIfNull, visibleIfNotNull), plus convenience methods
/// for creating empty space.
///
/// Example usage:
/// ```dart
/// Text('Conditional content')
///   .visibleIf(user.isLoggedIn)
///   .visibleIfNotNull(user.name)
/// ```
extension VisibleWidgetExtension on Widget {
  /// Shows the widget if the condition is true, otherwise returns an empty [SizedBox].
  ///
  /// This method provides conditional visibility based on a boolean condition.
  /// When the condition is false, the widget is completely removed from the layout
  /// and replaced with a [SizedBox.shrink] that takes up no space.
  ///
  /// Parameters:
  /// - [condition]: The boolean condition to evaluate.
  ///
  /// Returns this widget if condition is true, otherwise a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Text('Admin only content')
  ///   .visibleIf(user.isAdmin);
  ///
  /// Icon(Icons.star)
  ///   .visibleIf(item.isFavorite);
  /// ```
  Widget visibleIf(bool condition) =>
      condition ? this : const SizedBox.shrink();

  /// Shows the widget if the condition is false, otherwise returns an empty [SizedBox].
  ///
  /// This method provides inverted conditional visibility. It's equivalent to
  /// calling `visibleIf(!condition)` but provides better semantic clarity.
  ///
  /// Parameters:
  /// - [condition]: The boolean condition to evaluate (inverted).
  ///
  /// Returns this widget if condition is false, otherwise a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Text('Guest content')
  ///   .visibleIfNot(user.isLoggedIn);
  ///
  /// Button('Login')
  ///   .visibleIfNot(user.isAuthenticated);
  /// ```
  Widget visibleIfNot(bool condition) => visibleIf(!condition);

  /// Shows the widget if the value is null, otherwise returns an empty [SizedBox].
  ///
  /// This method provides null-based conditional visibility. Useful for showing
  /// placeholder content or fallback widgets when data is not available.
  ///
  /// Parameters:
  /// - [value]: The value to check for null.
  ///
  /// Returns this widget if value is null, otherwise a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Text('No data available')
  ///   .visibleIfNull(userData);
  ///
  /// CircularProgressIndicator()
  ///   .visibleIfNull(loadedContent);
  /// ```
  Widget visibleIfNull(Object? value) => visibleIf(value == null);

  /// Shows the widget if the value is not null, otherwise returns an empty [SizedBox].
  ///
  /// This method provides non-null conditional visibility. Useful for showing
  /// content only when data is available.
  ///
  /// Parameters:
  /// - [value]: The value to check for non-null.
  ///
  /// Returns this widget if value is not null, otherwise a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Text(user.name ?? '')
  ///   .visibleIfNotNull(user.name);
  ///
  /// Image.network(imageUrl)
  ///   .visibleIfNotNull(imageUrl);
  /// ```
  Widget visibleIfNotNull(Object? value) => visibleIf(value != null);

  /// Returns a [SizedBox.shrink] that takes up no space.
  ///
  /// This is a convenience method that creates an empty widget that occupies
  /// no space in the layout. Useful for conditional rendering or as a placeholder.
  ///
  /// Returns a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Widget buildOptionalWidget() {
  ///   return shouldShow ? Text('Content') : Text('').boxShrink();
  /// }
  /// ```
  SizedBox boxShrink() => const SizedBox.shrink();

  /// Hides the widget by returning a [SizedBox.shrink].
  ///
  /// This is an alias for [boxShrink] that provides semantic clarity when
  /// the intent is to hide a widget. The widget is completely removed from
  /// the layout.
  ///
  /// Returns a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Widget buildConditionalWidget() {
  ///   return isVisible ? actualWidget : actualWidget.hide();
  /// }
  /// ```
  SizedBox hide() => const SizedBox.shrink();

  /// Makes the widget invisible by returning a [SizedBox.shrink].
  ///
  /// This is an alias for [boxShrink] that provides semantic clarity when
  /// the intent is to make a widget invisible. Unlike opacity-based invisibility,
  /// this completely removes the widget from the layout.
  ///
  /// Returns a [SizedBox.shrink].
  ///
  /// Example:
  /// ```dart
  /// Text('Sometimes visible')
  ///   .invisible(); // Completely removed from layout
  /// ```
  SizedBox invisible() => const SizedBox.shrink();
}
