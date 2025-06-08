import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

/// Extension methods for [Widget] that provide comprehensive gesture detection functionality.
///
/// This extension adds methods to easily wrap widgets in [GestureDetector] widgets
/// with support for all types of gestures including taps, drags, scales, and force presses.
/// All methods return new [GestureDetector] widgets without modifying the original widget.
///
/// The extension provides both a comprehensive [gestureDetector] method with all parameters
/// and convenient shortcuts for common gestures like [onTap], [onTapDown], etc.
///
/// Gesture types supported:
/// - **Tap gestures**: Primary, secondary, and tertiary taps
/// - **Double tap gestures**: Double tap detection
/// - **Long press gestures**: Long press with move tracking
/// - **Drag gestures**: Horizontal, vertical, and pan dragging
/// - **Scale gestures**: Pinch-to-zoom and rotation
/// - **Force press gestures**: 3D Touch support
///
/// Example usage:
/// ```dart
/// Container(
///   width: 100,
///   height: 100,
///   color: Colors.blue,
/// ).onTap(() => print('Tapped!'))
///  .onLongPress(() => print('Long pressed!'));
/// ```
extension WidgetOnGestureExtension on Widget {
  /// Wraps the widget in a [GestureDetector] with comprehensive gesture support.
  ///
  /// Creates a [GestureDetector] that can handle all types of gestures supported by Flutter.
  /// This is the most flexible method in this extension, providing access to all gesture
  /// callbacks and configuration options.
  ///
  /// **Tap Gesture Parameters:**
  /// - [onTapDown]: Called when a tap down event occurs.
  /// - [onTapUp]: Called when a tap up event occurs.
  /// - [onTapCancel]: Called when a tap gesture is cancelled.
  /// - [onTap]: Called when a tap gesture is completed.
  ///
  /// **Secondary Tap Parameters (right-click/two-finger tap):**
  /// - [onSecondaryTapDown]: Called when a secondary tap down occurs.
  /// - [onSecondaryTapUp]: Called when a secondary tap up occurs.
  /// - [onSecondaryTapCancel]: Called when a secondary tap is cancelled.
  /// - [onSecondaryTap]: Called when a secondary tap is completed.
  ///
  /// **Tertiary Tap Parameters (middle-click/three-finger tap):**
  /// - [onTertiaryTapDown]: Called when a tertiary tap down occurs.
  /// - [onTertiaryTapUp]: Called when a tertiary tap up occurs.
  /// - [onTertiaryTapCancel]: Called when a tertiary tap is cancelled.
  ///
  /// **Double Tap Parameters:**
  /// - [onDoubleTapDown]: Called when a double tap down occurs.
  /// - [onDoubleTap]: Called when a double tap is completed.
  /// - [onDoubleTapCancel]: Called when a double tap is cancelled.
  ///
  /// **Long Press Parameters:**
  /// - [onLongPressDown]: Called when a long press down occurs.
  /// - [onLongPressCancel]: Called when a long press is cancelled.
  /// - [onLongPress]: Called when a long press is completed.
  /// - [onLongPressStart]: Called when a long press starts.
  /// - [onLongPressMoveUpdate]: Called during long press movement.
  /// - [onLongPressUp]: Called when a long press ends.
  /// - [onLongPressEnd]: Called when a long press gesture ends.
  ///
  /// **Drag Gesture Parameters:**
  /// - [onVerticalDragDown] through [onVerticalDragCancel]: Vertical drag events.
  /// - [onHorizontalDragDown] through [onHorizontalDragCancel]: Horizontal drag events.
  /// - [onPanDown] through [onPanCancel]: Pan (free direction) drag events.
  ///
  /// **Scale Gesture Parameters:**
  /// - [onScaleStart]: Called when a scale gesture starts.
  /// - [onScaleUpdate]: Called during scale gesture updates.
  /// - [onScaleEnd]: Called when a scale gesture ends.
  ///
  /// **Force Press Parameters (3D Touch):**
  /// - [onForcePressStart]: Called when force press starts.
  /// - [onForcePressPeak]: Called at force press peak.
  /// - [onForcePressUpdate]: Called during force press updates.
  /// - [onForcePressEnd]: Called when force press ends.
  ///
  /// **Configuration Parameters:**
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree.
  /// - [dragStartBehavior]: When drag gestures should start.
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Container(color: Colors.red)
  ///   .gestureDetector(
  ///     onTap: () => print('Tapped'),
  ///     onLongPress: () => print('Long pressed'),
  ///     onPanUpdate: (details) => print('Panning: ${details.delta}'),
  ///     behavior: HitTestBehavior.opaque,
  ///   );
  /// ```
  GestureDetector gestureDetector({
    // Tap gestures
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCancelCallback? onTapCancel,
    GestureTapCallback? onTap,

    // Secondary tap gestures
    GestureTapDownCallback? onSecondaryTapDown,
    GestureTapUpCallback? onSecondaryTapUp,
    GestureTapCancelCallback? onSecondaryTapCancel,
    GestureTapCallback? onSecondaryTap,

    // Tertiary tap gestures
    GestureTapDownCallback? onTertiaryTapDown,
    GestureTapUpCallback? onTertiaryTapUp,
    GestureTapCancelCallback? onTertiaryTapCancel,

    // Double tap gestures
    GestureTapDownCallback? onDoubleTapDown,
    GestureTapCallback? onDoubleTap,
    GestureTapCancelCallback? onDoubleTapCancel,

    // Long press gestures
    GestureLongPressDownCallback? onLongPressDown,
    GestureLongPressCancelCallback? onLongPressCancel,
    GestureLongPressCallback? onLongPress,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
    GestureLongPressUpCallback? onLongPressUp,
    GestureLongPressEndCallback? onLongPressEnd,

    // Secondary long press gestures
    GestureLongPressDownCallback? onSecondaryLongPressDown,
    GestureLongPressCancelCallback? onSecondaryLongPressCancel,
    GestureLongPressCallback? onSecondaryLongPress,
    GestureLongPressStartCallback? onSecondaryLongPressStart,
    GestureLongPressMoveUpdateCallback? onSecondaryLongPressMoveUpdate,
    GestureLongPressUpCallback? onSecondaryLongPressUp,
    GestureLongPressEndCallback? onSecondaryLongPressEnd,

    // Tertiary long press gestures
    GestureLongPressDownCallback? onTertiaryLongPressDown,
    GestureLongPressCancelCallback? onTertiaryLongPressCancel,
    GestureLongPressCallback? onTertiaryLongPress,
    GestureLongPressStartCallback? onTertiaryLongPressStart,
    GestureLongPressMoveUpdateCallback? onTertiaryLongPressMoveUpdate,
    GestureLongPressUpCallback? onTertiaryLongPressUp,
    GestureLongPressEndCallback? onTertiaryLongPressEnd,

    // Vertical drag gestures
    GestureDragDownCallback? onVerticalDragDown,
    GestureDragStartCallback? onVerticalDragStart,
    GestureDragUpdateCallback? onVerticalDragUpdate,
    GestureDragEndCallback? onVerticalDragEnd,
    GestureDragCancelCallback? onVerticalDragCancel,

    // Horizontal drag gestures
    GestureDragDownCallback? onHorizontalDragDown,
    GestureDragStartCallback? onHorizontalDragStart,
    GestureDragUpdateCallback? onHorizontalDragUpdate,
    GestureDragEndCallback? onHorizontalDragEnd,
    GestureDragCancelCallback? onHorizontalDragCancel,

    // Pan gestures
    GestureDragDownCallback? onPanDown,
    GestureDragStartCallback? onPanStart,
    GestureDragUpdateCallback? onPanUpdate,
    GestureDragEndCallback? onPanEnd,
    GestureDragCancelCallback? onPanCancel,

    // Scale gestures
    GestureScaleStartCallback? onScaleStart,
    GestureScaleUpdateCallback? onScaleUpdate,
    GestureScaleEndCallback? onScaleEnd,

    // Force press gestures
    GestureForcePressStartCallback? onForcePressStart,
    GestureForcePressPeakCallback? onForcePressPeak,
    GestureForcePressUpdateCallback? onForcePressUpdate,
    GestureForcePressEndCallback? onForcePressEnd,

    // Behavior and settings
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onTap: onTap,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onSecondaryTap: onSecondaryTap,
      onTertiaryTapDown: onTertiaryTapDown,
      onTertiaryTapUp: onTertiaryTapUp,
      onTertiaryTapCancel: onTertiaryTapCancel,
      onDoubleTapDown: onDoubleTapDown,
      onDoubleTap: onDoubleTap,
      onDoubleTapCancel: onDoubleTapCancel,
      onLongPressDown: onLongPressDown,
      onLongPressCancel: onLongPressCancel,
      onLongPress: onLongPress,
      onLongPressStart: onLongPressStart,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressUp: onLongPressUp,
      onLongPressEnd: onLongPressEnd,
      onSecondaryLongPressDown: onSecondaryLongPressDown,
      onSecondaryLongPressCancel: onSecondaryLongPressCancel,
      onSecondaryLongPress: onSecondaryLongPress,
      onSecondaryLongPressStart: onSecondaryLongPressStart,
      onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
      onSecondaryLongPressUp: onSecondaryLongPressUp,
      onSecondaryLongPressEnd: onSecondaryLongPressEnd,
      onTertiaryLongPressDown: onTertiaryLongPressDown,
      onTertiaryLongPressCancel: onTertiaryLongPressCancel,
      onTertiaryLongPress: onTertiaryLongPress,
      onTertiaryLongPressStart: onTertiaryLongPressStart,
      onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
      onTertiaryLongPressUp: onTertiaryLongPressUp,
      onTertiaryLongPressEnd: onTertiaryLongPressEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onPanDown: onPanDown,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      onPanCancel: onPanCancel,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onScaleEnd: onScaleEnd,
      onForcePressStart: onForcePressStart,
      onForcePressPeak: onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate,
      onForcePressEnd: onForcePressEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tap gestures.
  ///
  /// This is a convenience method for the most common gesture - a simple tap.
  /// It creates a [GestureDetector] with only the tap callback configured,
  /// making it perfect for buttons, clickable cards, and other interactive elements.
  ///
  /// Parameters:
  /// - [onTap]: The callback to execute when the widget is tapped.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  ///   Defaults to null (uses Flutter's default behavior).
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tap gestures.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   padding: EdgeInsets.all(16),
  ///   color: Colors.blue,
  ///   child: Text('Tap me!'),
  /// ).onTap(() {
  ///   print('Container was tapped!');
  ///   // Handle tap action
  /// });
  ///
  /// // With custom behavior
  /// Icon(Icons.favorite)
  ///   .onTap(
  ///     () => toggleFavorite(),
  ///     behavior: HitTestBehavior.opaque,
  ///   );
  /// ```
  GestureDetector onTap(
    VoidCallback onTap, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tap down events.
  ///
  /// This method is useful when you need to respond immediately when the user
  /// starts touching the widget, before they lift their finger. Common use cases
  /// include showing visual feedback (like button press states) or starting
  /// animations on touch down.
  ///
  /// Parameters:
  /// - [onTapDown]: The callback to execute when a tap down event occurs.
  ///   Provides [TapDownDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tap down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 50,
  ///   color: Colors.blue,
  ///   child: Text('Press me'),
  /// ).onTapDown((details) {
  ///   print('Tap down at: ${details.localPosition}');
  ///   // Show press animation or visual feedback
  /// });
  /// ```
  GestureDetector onTapDown(
    GestureTapDownCallback onTapDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTapDown: onTapDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tap up events.
  ///
  /// This method is called when the user lifts their finger after a tap down event.
  /// It's useful for implementing custom button behaviors or handling the completion
  /// of a tap gesture with detailed information about the tap location.
  ///
  /// Parameters:
  /// - [onTapUp]: The callback to execute when a tap up event occurs.
  ///   Provides [TapUpDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tap up events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 50,
  ///   color: Colors.green,
  ///   child: Text('Release me'),
  /// ).onTapUp((details) {
  ///   print('Tap released at: ${details.localPosition}');
  ///   // Handle tap release, hide press animation
  /// });
  /// ```
  GestureDetector onTapUp(
    GestureTapUpCallback onTapUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTapUp: onTapUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tap cancel events.
  ///
  /// This method is called when a tap gesture is cancelled before completion.
  /// This can happen when the user starts a tap but then drags their finger
  /// away from the widget or when another gesture recognizer takes precedence.
  /// It's useful for cleaning up any visual feedback or state changes that
  /// were initiated during the tap down event.
  ///
  /// Parameters:
  /// - [onTapCancel]: The callback to execute when a tap gesture is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tap cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 50,
  ///   color: Colors.red,
  ///   child: Text('Tap me'),
  /// ).onTapCancel(() {
  ///   print('Tap was cancelled');
  ///   // Reset any visual feedback or state
  /// });
  /// ```
  GestureDetector onTapCancel(
    VoidCallback onTapCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTapCancel: onTapCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary tap gestures.
  ///
  /// Secondary taps are typically right-clicks on desktop platforms or two-finger
  /// taps on mobile devices. This is commonly used for context menus, alternative
  /// actions, or secondary interactions that differ from the primary tap behavior.
  ///
  /// Parameters:
  /// - [onSecondaryTap]: The callback to execute when a secondary tap is completed.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary tap gestures.
  ///
  /// Example:
  /// ```dart
  /// ListTile(
  ///   title: Text('Right-click for options'),
  /// ).onSecondaryTap(() {
  ///   showContextMenu();
  /// });
  /// ```
  GestureDetector onSecondaryTap(
    VoidCallback onSecondaryTap, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryTap: onSecondaryTap,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary tap down events.
  ///
  /// This method is called when a secondary tap down event occurs (right-click press
  /// or two-finger touch down). It's useful for providing immediate visual feedback
  /// when the user initiates a secondary tap gesture, before the tap is completed.
  ///
  /// Parameters:
  /// - [onSecondaryTapDown]: The callback to execute when a secondary tap down occurs.
  ///   Provides [TapDownDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary tap down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   padding: EdgeInsets.all(8),
  ///   child: Text('Right-click me'),
  /// ).onSecondaryTapDown((details) {
  ///   print('Secondary tap down at: ${details.localPosition}');
  ///   // Show visual feedback for right-click
  /// });
  /// ```
  GestureDetector onSecondaryTapDown(
    GestureTapDownCallback onSecondaryTapDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryTapDown: onSecondaryTapDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary tap up events.
  ///
  /// This method is called when the user releases a secondary tap (right-click release
  /// or two-finger touch up). It provides detailed information about where the tap
  /// was released and is useful for implementing custom secondary tap behaviors.
  ///
  /// Parameters:
  /// - [onSecondaryTapUp]: The callback to execute when a secondary tap up occurs.
  ///   Provides [TapUpDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary tap up events.
  ///
  /// Example:
  /// ```dart
  /// Card(
  ///   child: Text('Context menu item'),
  /// ).onSecondaryTapUp((details) {
  ///   print('Secondary tap released at: ${details.localPosition}');
  ///   // Handle context menu action completion
  /// });
  /// ```
  GestureDetector onSecondaryTapUp(
    GestureTapUpCallback onSecondaryTapUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryTapUp: onSecondaryTapUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary tap cancel events.
  ///
  /// This method is called when a secondary tap gesture is cancelled before completion.
  /// This can occur when the user starts a right-click or two-finger tap but then
  /// moves away from the widget or when another gesture takes precedence.
  ///
  /// Parameters:
  /// - [onSecondaryTapCancel]: The callback to execute when a secondary tap is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary tap cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Right-click menu'),
  /// ).onSecondaryTapCancel(() {
  ///   print('Secondary tap cancelled');
  ///   // Clean up any context menu preparations
  /// });
  /// ```
  GestureDetector onSecondaryTapCancel(
    VoidCallback onSecondaryTapCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryTapCancel: onSecondaryTapCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary tap down events.
  ///
  /// Tertiary taps are typically middle-clicks on desktop platforms or three-finger
  /// taps on mobile devices. This method is called when the tertiary tap down event
  /// occurs, useful for providing immediate feedback for specialized interactions.
  ///
  /// Parameters:
  /// - [onTertiaryTapDown]: The callback to execute when a tertiary tap down occurs.
  ///   Provides [TapDownDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary tap down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click me'),
  /// ).onTertiaryTapDown((details) {
  ///   print('Tertiary tap down at: ${details.localPosition}');
  ///   // Handle middle-click press feedback
  /// });
  /// ```
  GestureDetector onTertiaryTapDown(
    GestureTapDownCallback onTertiaryTapDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryTapDown: onTertiaryTapDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary tap up events.
  ///
  /// This method is called when the user releases a tertiary tap (middle-click release
  /// or three-finger touch up). It provides detailed information about where the tap
  /// was released and is useful for implementing specialized tertiary interactions.
  ///
  /// Parameters:
  /// - [onTertiaryTapUp]: The callback to execute when a tertiary tap up occurs.
  ///   Provides [TapUpDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary tap up events.
  ///
  /// Example:
  /// ```dart
  /// Text('Middle-click action')
  ///   .onTertiaryTapUp((details) {
  ///     print('Tertiary tap released at: ${details.localPosition}');
  ///     // Handle middle-click action completion
  ///   });
  /// ```
  GestureDetector onTertiaryTapUp(
    GestureTapUpCallback onTertiaryTapUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryTapUp: onTertiaryTapUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary tap cancel events.
  ///
  /// This method is called when a tertiary tap gesture is cancelled before completion.
  /// This can occur when the user starts a middle-click or three-finger tap but then
  /// moves away from the widget or when another gesture takes precedence.
  ///
  /// Parameters:
  /// - [onTertiaryTapCancel]: The callback to execute when a tertiary tap is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary tap cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click feature'),
  /// ).onTertiaryTapCancel(() {
  ///   print('Tertiary tap cancelled');
  ///   // Clean up any middle-click preparations
  /// });
  /// ```
  GestureDetector onTertiaryTapCancel(
    VoidCallback onTertiaryTapCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryTapCancel: onTertiaryTapCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to double tap gestures.
  ///
  /// Double taps are two quick consecutive taps in the same location. This gesture
  /// is commonly used for actions like zooming, selecting text, or triggering
  /// special functionality that differs from single tap behavior.
  ///
  /// Parameters:
  /// - [onDoubleTap]: The callback to execute when a double tap is completed.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to double tap gestures.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('photo.jpg')
  ///   .onDoubleTap(() {
  ///     print('Double tapped to zoom');
  ///     // Zoom in on image
  ///   });
  /// ```
  GestureDetector onDoubleTap(
    VoidCallback onDoubleTap, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to double tap down events.
  ///
  /// This method is called when the second tap down of a double tap sequence occurs.
  /// It's useful for providing immediate visual feedback during the double tap gesture,
  /// before the complete double tap is recognized.
  ///
  /// Parameters:
  /// - [onDoubleTapDown]: The callback to execute when a double tap down occurs.
  ///   Provides [TapDownDetails] with information about the tap location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to double tap down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Double tap to edit'),
  /// ).onDoubleTapDown((details) {
  ///   print('Double tap down at: ${details.localPosition}');
  ///   // Show visual feedback for double tap
  /// });
  /// ```
  GestureDetector onDoubleTapDown(
    GestureTapDownCallback onDoubleTapDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onDoubleTapDown: onDoubleTapDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to double tap cancel events.
  ///
  /// This method is called when a double tap gesture is cancelled before completion.
  /// This can occur when the timing between taps is too long, the taps are too far
  /// apart, or when another gesture recognizer takes precedence.
  ///
  /// Parameters:
  /// - [onDoubleTapCancel]: The callback to execute when a double tap is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to double tap cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Double tap feature'),
  /// ).onDoubleTapCancel(() {
  ///   print('Double tap cancelled');
  ///   // Reset any double tap preparations
  /// });
  /// ```
  GestureDetector onDoubleTapCancel(
    VoidCallback onDoubleTapCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onDoubleTapCancel: onDoubleTapCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press gestures.
  ///
  /// Long press gestures are triggered when the user presses and holds on the widget
  /// for an extended period (typically 500ms). This gesture is commonly used for
  /// context menus, selection modes, or alternative actions.
  ///
  /// Parameters:
  /// - [onLongPress]: The callback to execute when a long press is completed.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press gestures.
  ///
  /// Example:
  /// ```dart
  /// ListTile(
  ///   title: Text('Long press for options'),
  /// ).onLongPress(() {
  ///   print('Long pressed');
  ///   showContextMenu();
  /// });
  /// ```
  GestureDetector onLongPress(
    VoidCallback onLongPress, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPress: onLongPress,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press down events.
  ///
  /// This method is called when a potential long press gesture begins. It provides
  /// early notification that the user has started pressing, which can be used to
  /// show visual feedback or prepare for the upcoming long press.
  ///
  /// Parameters:
  /// - [onLongPressDown]: The callback to execute when a long press down occurs.
  ///   Provides [LongPressDownDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Hold me'),
  /// ).onLongPressDown((details) {
  ///   print('Long press starting at: ${details.localPosition}');
  ///   // Show visual feedback for long press start
  /// });
  /// ```
  GestureDetector onLongPressDown(
    GestureLongPressDownCallback onLongPressDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressDown: onLongPressDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press cancel events.
  ///
  /// This method is called when a long press gesture is cancelled before completion.
  /// This can occur when the user lifts their finger too early, moves too far from
  /// the original position, or when another gesture recognizer takes precedence.
  ///
  /// Parameters:
  /// - [onLongPressCancel]: The callback to execute when a long press is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Long press feature'),
  /// ).onLongPressCancel(() {
  ///   print('Long press cancelled');
  ///   // Reset any long press visual feedback
  /// });
  /// ```
  GestureDetector onLongPressCancel(
    VoidCallback onLongPressCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressCancel: onLongPressCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press start events.
  ///
  /// This method is called when a long press gesture is recognized and starts.
  /// It provides detailed information about the gesture and is useful for implementing
  /// drag-and-drop operations or other interactions that begin with a long press.
  ///
  /// Parameters:
  /// - [onLongPressStart]: The callback to execute when a long press starts.
  ///   Provides [LongPressStartDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Drag me'),
  /// ).onLongPressStart((details) {
  ///   print('Long press started at: ${details.localPosition}');
  ///   // Begin drag operation
  /// });
  /// ```
  GestureDetector onLongPressStart(
    GestureLongPressStartCallback onLongPressStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressStart: onLongPressStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press move update events.
  ///
  /// This method is called when the user moves their finger during a long press gesture.
  /// It's useful for implementing drag operations that start with a long press, providing
  /// continuous updates about the finger position.
  ///
  /// Parameters:
  /// - [onLongPressMoveUpdate]: The callback to execute during long press movement.
  ///   Provides [LongPressMoveUpdateDetails] with movement information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press move update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Long press and drag'),
  /// ).onLongPressMoveUpdate((details) {
  ///   print('Long press moving to: ${details.localPosition}');
  ///   // Update drag position
  /// });
  /// ```
  GestureDetector onLongPressMoveUpdate(
    GestureLongPressMoveUpdateCallback onLongPressMoveUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press up events.
  ///
  /// This method is called when the user lifts their finger after a long press gesture.
  /// It's useful for completing drag operations or other interactions that were
  /// initiated by a long press.
  ///
  /// Parameters:
  /// - [onLongPressUp]: The callback to execute when a long press up occurs.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press up events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Long press action'),
  /// ).onLongPressUp(() {
  ///   print('Long press released');
  ///   // Complete long press action
  /// });
  /// ```
  GestureDetector onLongPressUp(
    VoidCallback onLongPressUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressUp: onLongPressUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to long press end events.
  ///
  /// This method is called when a long press gesture ends, providing detailed
  /// information about how the gesture concluded. It's useful for implementing
  /// complex long press interactions with velocity or position-based completion.
  ///
  /// Parameters:
  /// - [onLongPressEnd]: The callback to execute when a long press ends.
  ///   Provides [LongPressEndDetails] with information about the gesture end.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to long press end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Long press with details'),
  /// ).onLongPressEnd((details) {
  ///   print('Long press ended at: ${details.localPosition}');
  ///   // Handle detailed long press completion
  /// });
  /// ```
  GestureDetector onLongPressEnd(
    GestureLongPressEndCallback onLongPressEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onLongPressEnd: onLongPressEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press gestures.
  ///
  /// Secondary long press gestures are triggered when the user performs a long press
  /// with the secondary button (right-click and hold) or a two-finger long press on
  /// mobile devices. This is useful for advanced context menus or specialized interactions.
  ///
  /// Parameters:
  /// - [onSecondaryLongPress]: The callback to execute when a secondary long press is completed.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press gestures.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Right-click and hold'),
  /// ).onSecondaryLongPress(() {
  ///   print('Secondary long press completed');
  ///   // Show advanced context menu
  /// });
  /// ```
  GestureDetector onSecondaryLongPress(
    VoidCallback onSecondaryLongPress, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPress: onSecondaryLongPress,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press down events.
  ///
  /// This method is called when a secondary long press down event occurs (right-click and hold
  /// or two-finger press and hold). It provides early notification that the user has started
  /// a secondary long press gesture, which can be used for advanced context menu preparations
  /// or specialized visual feedback.
  ///
  /// Parameters:
  /// - [onSecondaryLongPressDown]: The callback to execute when a secondary long press down occurs.
  ///   Provides [LongPressDownDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Right-click and hold'),
  /// ).onSecondaryLongPressDown((details) {
  ///   print('Secondary long press starting at: ${details.localPosition}');
  ///   // Prepare advanced context menu
  /// });
  /// ```
  GestureDetector onSecondaryLongPressDown(
    GestureLongPressDownCallback onSecondaryLongPressDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressDown: onSecondaryLongPressDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press cancel events.
  ///
  /// This method is called when a secondary long press gesture is cancelled before completion.
  /// This can occur when the user starts a right-click and hold or two-finger long press but
  /// then moves away from the widget, lifts too early, or when another gesture takes precedence.
  /// It's useful for cleaning up any preparations made during the secondary long press down event.
  ///
  /// Parameters:
  /// - [onSecondaryLongPressCancel]: The callback to execute when a secondary long press is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Advanced context menu'),
  /// ).onSecondaryLongPressCancel(() {
  ///   print('Secondary long press cancelled');
  ///   // Clean up context menu preparations
  /// });
  /// ```
  GestureDetector onSecondaryLongPressCancel(
    VoidCallback onSecondaryLongPressCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressCancel: onSecondaryLongPressCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press start events.
  ///
  /// This method is called when a secondary long press gesture is recognized and starts.
  /// It provides detailed information about the gesture initiation and is useful for implementing
  /// advanced drag-and-drop operations or specialized interactions that begin with a secondary
  /// long press (right-click and hold or two-finger long press).
  ///
  /// Parameters:
  /// - [onSecondaryLongPressStart]: The callback to execute when a secondary long press starts.
  ///   Provides [LongPressStartDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Right-click drag me'),
  /// ).onSecondaryLongPressStart((details) {
  ///   print('Secondary long press started at: ${details.localPosition}');
  ///   // Begin specialized drag operation
  /// });
  /// ```
  GestureDetector onSecondaryLongPressStart(
    GestureLongPressStartCallback onSecondaryLongPressStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressStart: onSecondaryLongPressStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press move update events.
  ///
  /// This method is called when the user moves their finger during a secondary long press gesture
  /// (right-click and hold drag or two-finger long press drag). It provides continuous updates
  /// about finger position during the movement, enabling smooth drag operations that start with
  /// a secondary long press.
  ///
  /// Parameters:
  /// - [onSecondaryLongPressMoveUpdate]: The callback to execute during secondary long press movement.
  ///   Provides [LongPressMoveUpdateDetails] with movement information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press move update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Right-click and drag'),
  /// ).onSecondaryLongPressMoveUpdate((details) {
  ///   print('Secondary long press moving to: ${details.localPosition}');
  ///   // Update specialized drag position
  /// });
  /// ```
  GestureDetector onSecondaryLongPressMoveUpdate(
    GestureLongPressMoveUpdateCallback onSecondaryLongPressMoveUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressMoveUpdate: onSecondaryLongPressMoveUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press up events.
  ///
  /// This method is called when the user lifts their finger after a secondary long press gesture
  /// (right-click and hold release or two-finger long press release). It's useful for completing
  /// specialized drag operations or other interactions that were initiated by a secondary long press.
  ///
  /// Parameters:
  /// - [onSecondaryLongPressUp]: The callback to execute when a secondary long press up occurs.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press up events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Secondary long press action'),
  /// ).onSecondaryLongPressUp(() {
  ///   print('Secondary long press released');
  ///   // Complete specialized long press action
  /// });
  /// ```
  GestureDetector onSecondaryLongPressUp(
    VoidCallback onSecondaryLongPressUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressUp: onSecondaryLongPressUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to secondary long press end events.
  ///
  /// This method is called when a secondary long press gesture ends, providing detailed
  /// information about how the gesture concluded. It's useful for implementing complex
  /// secondary long press interactions with velocity or position-based completion logic.
  ///
  /// Parameters:
  /// - [onSecondaryLongPressEnd]: The callback to execute when a secondary long press ends.
  ///   Provides [LongPressEndDetails] with information about the gesture end.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to secondary long press end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Secondary long press with details'),
  /// ).onSecondaryLongPressEnd((details) {
  ///   print('Secondary long press ended at: ${details.localPosition}');
  ///   // Handle detailed secondary long press completion
  /// });
  /// ```
  GestureDetector onSecondaryLongPressEnd(
    GestureLongPressEndCallback onSecondaryLongPressEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onSecondaryLongPressEnd: onSecondaryLongPressEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press gestures.
  ///
  /// Tertiary long press gestures are triggered when the user performs a long press with the
  /// tertiary button (middle-click and hold) or a three-finger long press on mobile devices.
  /// This is useful for highly specialized interactions or advanced functionality that requires
  /// a distinct gesture from primary and secondary long presses.
  ///
  /// Parameters:
  /// - [onTertiaryLongPress]: The callback to execute when a tertiary long press is completed.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press gestures.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click and hold'),
  /// ).onTertiaryLongPress(() {
  ///   print('Tertiary long press completed');
  ///   // Show specialized feature menu
  /// });
  /// ```
  GestureDetector onTertiaryLongPress(
    VoidCallback onTertiaryLongPress, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPress: onTertiaryLongPress,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press down events.
  ///
  /// This method is called when a tertiary long press down event occurs (middle-click and hold
  /// or three-finger press and hold). It provides early notification that the user has started
  /// a tertiary long press gesture, which can be used for specialized feature preparations
  /// or unique visual feedback.
  ///
  /// Parameters:
  /// - [onTertiaryLongPressDown]: The callback to execute when a tertiary long press down occurs.
  ///   Provides [LongPressDownDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click and hold'),
  /// ).onTertiaryLongPressDown((details) {
  ///   print('Tertiary long press starting at: ${details.localPosition}');
  ///   // Prepare specialized feature
  /// });
  /// ```
  GestureDetector onTertiaryLongPressDown(
    GestureLongPressDownCallback onTertiaryLongPressDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressDown: onTertiaryLongPressDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press cancel events.
  ///
  /// This method is called when a tertiary long press gesture is cancelled before completion.
  /// This can occur when the user starts a middle-click and hold or three-finger long press but
  /// then moves away from the widget, lifts too early, or when another gesture takes precedence.
  /// It's useful for cleaning up any preparations made during the tertiary long press down event.
  ///
  /// Parameters:
  /// - [onTertiaryLongPressCancel]: The callback to execute when a tertiary long press is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Specialized feature'),
  /// ).onTertiaryLongPressCancel(() {
  ///   print('Tertiary long press cancelled');
  ///   // Clean up specialized feature preparations
  /// });
  /// ```
  GestureDetector onTertiaryLongPressCancel(
    VoidCallback onTertiaryLongPressCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressCancel: onTertiaryLongPressCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press start events.
  ///
  /// This method is called when a tertiary long press gesture is recognized and starts.
  /// It provides detailed information about the gesture initiation and is useful for implementing
  /// highly specialized drag-and-drop operations or unique interactions that begin with a tertiary
  /// long press (middle-click and hold or three-finger long press).
  ///
  /// Parameters:
  /// - [onTertiaryLongPressStart]: The callback to execute when a tertiary long press starts.
  ///   Provides [LongPressStartDetails] with information about the press location.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click drag me'),
  /// ).onTertiaryLongPressStart((details) {
  ///   print('Tertiary long press started at: ${details.localPosition}');
  ///   // Begin unique drag operation
  /// });
  /// ```
  GestureDetector onTertiaryLongPressStart(
    GestureLongPressStartCallback onTertiaryLongPressStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressStart: onTertiaryLongPressStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press move update events.
  ///
  /// This method is called when the user moves their finger during a tertiary long press gesture
  /// (middle-click and hold drag or three-finger long press drag). It provides continuous updates
  /// about finger position during the movement, enabling smooth drag operations that start with
  /// a tertiary long press.
  ///
  /// Parameters:
  /// - [onTertiaryLongPressMoveUpdate]: The callback to execute during tertiary long press movement.
  ///   Provides [LongPressMoveUpdateDetails] with movement information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press move update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Middle-click and drag'),
  /// ).onTertiaryLongPressMoveUpdate((details) {
  ///   print('Tertiary long press moving to: ${details.localPosition}');
  ///   // Update unique drag position
  /// });
  /// ```
  GestureDetector onTertiaryLongPressMoveUpdate(
    GestureLongPressMoveUpdateCallback onTertiaryLongPressMoveUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressMoveUpdate: onTertiaryLongPressMoveUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press up events.
  ///
  /// This method is called when the user lifts their finger after a tertiary long press gesture
  /// (middle-click and hold release or three-finger long press release). It's useful for completing
  /// highly specialized drag operations or other unique interactions that were initiated by a
  /// tertiary long press.
  ///
  /// Parameters:
  /// - [onTertiaryLongPressUp]: The callback to execute when a tertiary long press up occurs.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press up events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Tertiary long press action'),
  /// ).onTertiaryLongPressUp(() {
  ///   print('Tertiary long press released');
  ///   // Complete unique long press action
  /// });
  /// ```
  GestureDetector onTertiaryLongPressUp(
    VoidCallback onTertiaryLongPressUp, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressUp: onTertiaryLongPressUp,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to tertiary long press end events.
  ///
  /// This method is called when a tertiary long press gesture ends, providing detailed
  /// information about how the gesture concluded. It's useful for implementing complex
  /// tertiary long press interactions with velocity or position-based completion logic
  /// for highly specialized features.
  ///
  /// Parameters:
  /// - [onTertiaryLongPressEnd]: The callback to execute when a tertiary long press ends.
  ///   Provides [LongPressEndDetails] with information about the gesture end.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to tertiary long press end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Tertiary long press with details'),
  /// ).onTertiaryLongPressEnd((details) {
  ///   print('Tertiary long press ended at: ${details.localPosition}');
  ///   // Handle detailed tertiary long press completion
  /// });
  /// ```
  GestureDetector onTertiaryLongPressEnd(
    GestureLongPressEndCallback onTertiaryLongPressEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onTertiaryLongPressEnd: onTertiaryLongPressEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to vertical drag down events.
  ///
  /// This method is called when a vertical drag gesture begins. Vertical drag gestures
  /// are constrained to move only in the vertical direction (up and down). This is useful
  /// for implementing scrollable lists, sliders, or other UI elements that should only
  /// respond to vertical movement.
  ///
  /// Parameters:
  /// - [onVerticalDragDown]: The callback to execute when a vertical drag down occurs.
  ///   Provides [DragDownDetails] with information about the initial touch position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to vertical drag down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Drag vertically'),
  /// ).onVerticalDragDown((details) {
  ///   print('Vertical drag started at: ${details.localPosition}');
  ///   // Initialize vertical drag state
  /// });
  /// ```
  GestureDetector onVerticalDragDown(
    GestureDragDownCallback onVerticalDragDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onVerticalDragDown: onVerticalDragDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to vertical drag start events.
  ///
  /// This method is called when a vertical drag gesture is recognized and starts moving.
  /// It provides detailed information about the drag initiation and is useful for setting up
  /// the initial state for vertical scrolling, sliding, or other vertical movement interactions.
  ///
  /// Parameters:
  /// - [onVerticalDragStart]: The callback to execute when a vertical drag starts.
  ///   Provides [DragStartDetails] with information about the drag start position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to vertical drag start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Vertical slider'),
  /// ).onVerticalDragStart((details) {
  ///   print('Vertical drag started at: ${details.localPosition}');
  ///   // Begin vertical drag operation
  /// });
  /// ```
  GestureDetector onVerticalDragStart(
    GestureDragStartCallback onVerticalDragStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onVerticalDragStart: onVerticalDragStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to vertical drag update events.
  ///
  /// This method is called continuously as the user drags their finger vertically across
  /// the screen. It provides real-time updates about the vertical movement, making it
  /// perfect for implementing smooth vertical scrolling, sliders, or progress indicators
  /// that respond to vertical gestures.
  ///
  /// Parameters:
  /// - [onVerticalDragUpdate]: The callback to execute during vertical drag movement.
  ///   Provides [DragUpdateDetails] with delta and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to vertical drag update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Scroll me vertically'),
  /// ).onVerticalDragUpdate((details) {
  ///   print('Vertical drag delta: ${details.delta.dy}');
  ///   // Update vertical scroll position
  /// });
  /// ```
  GestureDetector onVerticalDragUpdate(
    GestureDragUpdateCallback onVerticalDragUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onVerticalDragUpdate: onVerticalDragUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to vertical drag end events.
  ///
  /// This method is called when a vertical drag gesture ends. It provides information
  /// about the final velocity and position, which is useful for implementing momentum
  /// scrolling, snap-to-position behavior, or other physics-based interactions that
  /// should continue after the user lifts their finger.
  ///
  /// Parameters:
  /// - [onVerticalDragEnd]: The callback to execute when a vertical drag ends.
  ///   Provides [DragEndDetails] with velocity and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to vertical drag end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Flick me vertically'),
  /// ).onVerticalDragEnd((details) {
  ///   print('Vertical drag ended with velocity: ${details.velocity.pixelsPerSecond.dy}');
  ///   // Apply momentum scrolling
  /// });
  /// ```
  GestureDetector onVerticalDragEnd(
    GestureDragEndCallback onVerticalDragEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onVerticalDragEnd: onVerticalDragEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to vertical drag cancel events.
  ///
  /// This method is called when a vertical drag gesture is cancelled before completion.
  /// This can occur when another gesture recognizer takes precedence or when the system
  /// interrupts the drag. It's useful for cleaning up any state or visual feedback that
  /// was established during the vertical drag operation.
  ///
  /// Parameters:
  /// - [onVerticalDragCancel]: The callback to execute when a vertical drag is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to vertical drag cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   height: 200,
  ///   child: Text('Vertical drag feature'),
  /// ).onVerticalDragCancel(() {
  ///   print('Vertical drag cancelled');
  ///   // Reset vertical drag state
  /// });
  /// ```
  GestureDetector onVerticalDragCancel(
    VoidCallback onVerticalDragCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onVerticalDragCancel: onVerticalDragCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to horizontal drag down events.
  ///
  /// This method is called when a horizontal drag gesture begins. Horizontal drag gestures
  /// are constrained to move only in the horizontal direction (left and right). This is useful
  /// for implementing horizontal scrollable content, sliders, carousels, or other UI elements
  /// that should only respond to horizontal movement.
  ///
  /// Parameters:
  /// - [onHorizontalDragDown]: The callback to execute when a horizontal drag down occurs.
  ///   Provides [DragDownDetails] with information about the initial touch position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to horizontal drag down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 200,
  ///   child: Text('Drag horizontally'),
  /// ).onHorizontalDragDown((details) {
  ///   print('Horizontal drag started at: ${details.localPosition}');
  ///   // Initialize horizontal drag state
  /// });
  /// ```
  GestureDetector onHorizontalDragDown(
    GestureDragDownCallback onHorizontalDragDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onHorizontalDragDown: onHorizontalDragDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to horizontal drag start events.
  ///
  /// This method is called when a horizontal drag gesture is recognized and starts moving.
  /// It provides detailed information about the drag initiation and is useful for setting up
  /// the initial state for horizontal scrolling, sliding, carousel navigation, or other
  /// horizontal movement interactions.
  ///
  /// Parameters:
  /// - [onHorizontalDragStart]: The callback to execute when a horizontal drag starts.
  ///   Provides [DragStartDetails] with information about the drag start position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to horizontal drag start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 200,
  ///   child: Text('Horizontal slider'),
  /// ).onHorizontalDragStart((details) {
  ///   print('Horizontal drag started at: ${details.localPosition}');
  ///   // Begin horizontal drag operation
  /// });
  /// ```
  GestureDetector onHorizontalDragStart(
    GestureDragStartCallback onHorizontalDragStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onHorizontalDragStart: onHorizontalDragStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to horizontal drag update events.
  ///
  /// This method is called continuously as the user drags their finger horizontally across
  /// the screen. It provides real-time updates about the horizontal movement, making it
  /// perfect for implementing smooth horizontal scrolling, carousels, sliders, or progress
  /// indicators that respond to horizontal gestures.
  ///
  /// Parameters:
  /// - [onHorizontalDragUpdate]: The callback to execute during horizontal drag movement.
  ///   Provides [DragUpdateDetails] with delta and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to horizontal drag update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 200,
  ///   child: Text('Scroll me horizontally'),
  /// ).onHorizontalDragUpdate((details) {
  ///   print('Horizontal drag delta: ${details.delta.dx}');
  ///   // Update horizontal scroll position
  /// });
  /// ```
  GestureDetector onHorizontalDragUpdate(
    GestureDragUpdateCallback onHorizontalDragUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to horizontal drag end events.
  ///
  /// This method is called when a horizontal drag gesture ends. It provides information
  /// about the final velocity and position, which is useful for implementing momentum
  /// scrolling, snap-to-position behavior, carousel page snapping, or other physics-based
  /// interactions that should continue after the user lifts their finger.
  ///
  /// Parameters:
  /// - [onHorizontalDragEnd]: The callback to execute when a horizontal drag ends.
  ///   Provides [DragEndDetails] with velocity and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to horizontal drag end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 200,
  ///   child: Text('Flick me horizontally'),
  /// ).onHorizontalDragEnd((details) {
  ///   print('Horizontal drag ended with velocity: ${details.velocity.pixelsPerSecond.dx}');
  ///   // Apply momentum scrolling or snap to page
  /// });
  /// ```
  GestureDetector onHorizontalDragEnd(
    GestureDragEndCallback onHorizontalDragEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onHorizontalDragEnd: onHorizontalDragEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to horizontal drag cancel events.
  ///
  /// This method is called when a horizontal drag gesture is cancelled before completion.
  /// This can occur when another gesture recognizer takes precedence or when the system
  /// interrupts the drag. It's useful for cleaning up any state or visual feedback that
  /// was established during the horizontal drag operation.
  ///
  /// Parameters:
  /// - [onHorizontalDragCancel]: The callback to execute when a horizontal drag is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to horizontal drag cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 200,
  ///   child: Text('Horizontal drag feature'),
  /// ).onHorizontalDragCancel(() {
  ///   print('Horizontal drag cancelled');
  ///   // Reset horizontal drag state
  /// });
  /// ```
  GestureDetector onHorizontalDragCancel(
    VoidCallback onHorizontalDragCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onHorizontalDragCancel: onHorizontalDragCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to pan down events.
  ///
  /// This method is called when a pan gesture begins. Pan gestures allow free-direction
  /// dragging without being constrained to horizontal or vertical movement. This is the
  /// most flexible drag gesture and is commonly used for moving objects around the screen,
  /// implementing custom scrolling behavior, or creating interactive canvases.
  ///
  /// Parameters:
  /// - [onPanDown]: The callback to execute when a pan down occurs.
  ///   Provides [DragDownDetails] with information about the initial touch position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to pan down events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Drag me anywhere'),
  /// ).onPanDown((details) {
  ///   print('Pan started at: ${details.localPosition}');
  ///   // Initialize free-direction drag state
  /// });
  /// ```
  GestureDetector onPanDown(
    GestureDragDownCallback onPanDown, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onPanDown: onPanDown,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to pan start events.
  ///
  /// This method is called when a pan gesture is recognized and starts moving. It provides
  /// detailed information about the drag initiation and is useful for setting up the initial
  /// state for free-direction dragging, object movement, or custom scrolling implementations
  /// that need to work in any direction.
  ///
  /// Parameters:
  /// - [onPanStart]: The callback to execute when a pan starts.
  ///   Provides [DragStartDetails] with information about the drag start position.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to pan start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Movable object'),
  /// ).onPanStart((details) {
  ///   print('Pan started at: ${details.localPosition}');
  ///   // Begin free-direction drag operation
  /// });
  /// ```
  GestureDetector onPanStart(
    GestureDragStartCallback onPanStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onPanStart: onPanStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to pan update events.
  ///
  /// Pan gestures allow free-direction dragging and are one of the most commonly used
  /// drag gestures. This method is called continuously as the user drags their finger
  /// across the screen, providing real-time position updates for smooth interactions.
  ///
  /// Parameters:
  /// - [onPanUpdate]: The callback to execute during pan movement.
  ///   Provides [DragUpdateDetails] with delta and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to pan update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Drag me around'),
  /// ).onPanUpdate((details) {
  ///   print('Dragging by: ${details.delta}');
  ///   // Update widget position based on drag
  /// });
  /// ```
  GestureDetector onPanUpdate(
    GestureDragUpdateCallback onPanUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onPanUpdate: onPanUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to pan end events.
  ///
  /// This method is called when a pan gesture ends. It provides information about the
  /// final velocity and position, which is useful for implementing momentum scrolling,
  /// physics-based animations, or snap-to-position behavior for draggable objects.
  /// Pan gestures are the most flexible drag gestures as they work in any direction.
  ///
  /// Parameters:
  /// - [onPanEnd]: The callback to execute when a pan ends.
  ///   Provides [DragEndDetails] with velocity and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to pan end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Flick me in any direction'),
  /// ).onPanEnd((details) {
  ///   print('Pan ended with velocity: ${details.velocity.pixelsPerSecond}');
  ///   // Apply momentum or snap to position
  /// });
  /// ```
  GestureDetector onPanEnd(
    GestureDragEndCallback onPanEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onPanEnd: onPanEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to pan cancel events.
  ///
  /// This method is called when a pan gesture is cancelled before completion. This can
  /// occur when another gesture recognizer takes precedence, when the system interrupts
  /// the gesture, or when the pan gesture conflicts with other gestures. It's useful for
  /// cleaning up any state or visual feedback that was established during the pan operation.
  ///
  /// Parameters:
  /// - [onPanCancel]: The callback to execute when a pan is cancelled.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to pan cancel events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Pan drag feature'),
  /// ).onPanCancel(() {
  ///   print('Pan gesture cancelled');
  ///   // Reset pan drag state and visual feedback
  /// });
  /// ```
  GestureDetector onPanCancel(
    VoidCallback onPanCancel, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onPanCancel: onPanCancel,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to scale start events.
  ///
  /// This method is called when a scale gesture begins. Scale gestures are typically
  /// initiated by pinch-to-zoom interactions (two fingers moving closer or farther apart)
  /// or rotation gestures. This is commonly used for implementing zoom functionality
  /// in images, maps, or other scalable content.
  ///
  /// Parameters:
  /// - [onScaleStart]: The callback to execute when a scale gesture starts.
  ///   Provides [ScaleStartDetails] with information about the initial focal point.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to scale start events.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('photo.jpg')
  ///   .onScaleStart((details) {
  ///     print('Scale started at focal point: ${details.focalPoint}');
  ///     // Initialize zoom state
  ///   });
  /// ```
  GestureDetector onScaleStart(
    GestureScaleStartCallback onScaleStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onScaleStart: onScaleStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to scale update events.
  ///
  /// Scale gestures are used for pinch-to-zoom and rotation interactions. This method
  /// is called continuously during scaling operations, providing real-time updates
  /// about scale factor, rotation, and focal point changes.
  ///
  /// Parameters:
  /// - [onScaleUpdate]: The callback to execute during scale updates.
  ///   Provides [ScaleUpdateDetails] with scale, rotation, and focal point information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to scale update events.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('photo.jpg')
  ///   .onScaleUpdate((details) {
  ///     print('Scale: ${details.scale}, Rotation: ${details.rotation}');
  ///     // Apply zoom and rotation transformations
  ///   });
  /// ```
  GestureDetector onScaleUpdate(
    GestureScaleUpdateCallback onScaleUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onScaleUpdate: onScaleUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to scale end events.
  ///
  /// This method is called when a scale gesture ends. It provides information about
  /// the final velocity of the scaling operation, which can be used to implement
  /// momentum-based scaling, snap-to-zoom levels, or smooth scale animations that
  /// continue after the user lifts their fingers.
  ///
  /// Parameters:
  /// - [onScaleEnd]: The callback to execute when a scale gesture ends.
  ///   Provides [ScaleEndDetails] with velocity information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to scale end events.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('photo.jpg')
  ///   .onScaleEnd((details) {
  ///     print('Scale ended with velocity: ${details.velocity}');
  ///     // Apply momentum scaling or snap to zoom level
  ///   });
  /// ```
  GestureDetector onScaleEnd(
    GestureScaleEndCallback onScaleEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onScaleEnd: onScaleEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to force press start events.
  ///
  /// Force press gestures are available on devices that support pressure-sensitive input,
  /// such as iPhones with 3D Touch or Apple Watches. This method is called when the user
  /// begins applying significant pressure to the screen. It's commonly used for peek and
  /// pop interactions, context menus, or pressure-sensitive drawing applications.
  ///
  /// Parameters:
  /// - [onForcePressStart]: The callback to execute when a force press starts.
  ///   Provides [ForcePressDetails] with pressure and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to force press start events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('3D Touch me'),
  /// ).onForcePressStart((details) {
  ///   print('Force press started with pressure: ${details.pressure}');
  ///   // Show peek preview
  /// });
  /// ```
  GestureDetector onForcePressStart(
    GestureForcePressStartCallback onForcePressStart, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onForcePressStart: onForcePressStart,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to force press peak events.
  ///
  /// This method is called when a force press gesture reaches its peak pressure. This
  /// typically occurs when the user has applied maximum pressure during a 3D Touch
  /// interaction. It's commonly used to trigger the "pop" action in peek and pop
  /// interactions, where the user transitions from previewing content to fully opening it.
  ///
  /// Parameters:
  /// - [onForcePressPeak]: The callback to execute when force press reaches peak pressure.
  ///   Provides [ForcePressDetails] with pressure and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to force press peak events.
  ///
  /// Example:
  /// ```dart
  /// ListTile(
  ///   title: Text('3D Touch for quick actions'),
  /// ).onForcePressPeak((details) {
  ///   print('Force press peaked at pressure: ${details.pressure}');
  ///   // Trigger pop action - open full content
  /// });
  /// ```
  GestureDetector onForcePressPeak(
    GestureForcePressPeakCallback onForcePressPeak, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onForcePressPeak: onForcePressPeak,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to force press update events.
  ///
  /// This method is called continuously during a force press gesture as the pressure
  /// changes. It provides real-time pressure updates, which can be used to create
  /// pressure-sensitive interactions, progressive reveals, or dynamic visual feedback
  /// that responds to how hard the user is pressing.
  ///
  /// Parameters:
  /// - [onForcePressUpdate]: The callback to execute during force press updates.
  ///   Provides [ForcePressDetails] with current pressure and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to force press update events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('Pressure-sensitive drawing'),
  /// ).onForcePressUpdate((details) {
  ///   print('Current pressure: ${details.pressure}');
  ///   // Update brush size or opacity based on pressure
  /// });
  /// ```
  GestureDetector onForcePressUpdate(
    GestureForcePressUpdateCallback onForcePressUpdate, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onForcePressUpdate: onForcePressUpdate,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }

  /// Wraps the widget in a [GestureDetector] that responds to force press end events.
  ///
  /// This method is called when a force press gesture ends, typically when the user
  /// lifts their finger from the screen. It provides information about the final
  /// pressure state and is useful for completing force press interactions, cleaning
  /// up pressure-sensitive UI states, or determining the final action based on the
  /// pressure level when the gesture ended.
  ///
  /// Parameters:
  /// - [onForcePressEnd]: The callback to execute when a force press ends.
  ///   Provides [ForcePressDetails] with final pressure and position information.
  /// - [behavior]: How the gesture detector should behave during hit testing.
  /// - [excludeFromSemantics]: Whether to exclude from semantic tree. Defaults to false.
  /// - [dragStartBehavior]: When drag gestures should start. Defaults to [DragStartBehavior.start].
  /// - [trackpadScrollCausesScale]: Whether trackpad scrolling causes scaling. Defaults to false.
  /// - [trackpadScrollToScaleFactor]: Scale factor for trackpad scroll conversion.
  /// - [supportedDevices]: Set of supported pointer device kinds.
  ///
  /// Returns a [GestureDetector] widget that responds to force press end events.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   child: Text('3D Touch interaction'),
  /// ).onForcePressEnd((details) {
  ///   print('Force press ended with final pressure: ${details.pressure}');
  ///   // Complete force press action and reset UI state
  /// });
  /// ```
  GestureDetector onForcePressEnd(
    GestureForcePressEndCallback onForcePressEnd, {
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool trackpadScrollCausesScale = false,
    Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
    Set<PointerDeviceKind>? supportedDevices,
  }) {
    return GestureDetector(
      onForcePressEnd: onForcePressEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      trackpadScrollCausesScale: trackpadScrollCausesScale,
      trackpadScrollToScaleFactor: trackpadScrollToScaleFactor,
      supportedDevices: supportedDevices,
      child: this,
    );
  }
}
