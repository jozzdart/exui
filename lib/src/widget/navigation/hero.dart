import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient hero animation functionality.
///
/// This extension adds a method to easily wrap widgets in [Hero] widgets for
/// smooth page transition animations. Hero animations create a visual connection
/// between widgets on different screens by animating them during navigation.
///
/// Hero widgets with the same tag will be automatically animated between screens
/// when navigating. This creates smooth, visually appealing transitions that help
/// users understand the relationship between elements across different pages.
///
/// Example usage:
/// ```dart
/// Image.asset('profile.jpg')
///   .hero('profile-image'); // Will animate when navigating between screens
/// ```
extension HeroWidgetExtension on Widget {
  /// Wraps the widget in a [Hero] for page transition animations.
  ///
  /// Creates a [Hero] widget that enables smooth animations when navigating
  /// between screens. Widgets with the same hero tag will be automatically
  /// animated during page transitions, creating a visual connection between
  /// the source and destination widgets.
  ///
  /// Parameters:
  /// - [tag]: A unique identifier for this hero. Widgets with the same tag
  ///   will be animated together during navigation. Must be unique within
  ///   the current route.
  /// - [createRectTween]: Optional custom tween for animating the hero's
  ///   bounding rectangle during the transition.
  /// - [flightShuttleBuilder]: Optional builder for creating a custom widget
  ///   to display during the hero flight animation.
  /// - [placeholderBuilder]: Optional builder for creating a placeholder
  ///   widget to display in place of the hero during animation.
  /// - [transitionOnUserGestures]: Whether to trigger hero transitions
  ///   during user gesture-driven navigation. Defaults to false.
  ///
  /// Returns a [Hero] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// // On the first screen
  /// GestureDetector(
  ///   onTap: () => Navigator.push(context, DetailPage()),
  ///   child: Image.network('https://example.com/image.jpg')
  ///     .hero('image-hero'),
  /// );
  ///
  /// // On the detail screen
  /// Image.network('https://example.com/image.jpg')
  ///   .hero('image-hero'); // Same tag creates smooth transition
  ///
  /// // Custom hero with gesture transitions
  /// Container(color: Colors.blue)
  ///   .hero(
  ///     'blue-container',
  ///     transitionOnUserGestures: true,
  ///   );
  /// ```
  Hero hero(
    String tag, {
    Tween<Rect?> Function(Rect?, Rect?)? createRectTween,
    Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
            BuildContext, BuildContext)?
        flightShuttleBuilder,
    Widget Function(BuildContext, Size, Widget)? placeholderBuilder,
    bool transitionOnUserGestures = false,
  }) =>
      Hero(
        tag: tag,
        createRectTween: createRectTween,
        flightShuttleBuilder: flightShuttleBuilder,
        placeholderBuilder: placeholderBuilder,
        transitionOnUserGestures: transitionOnUserGestures,
        child: this,
      );
}
