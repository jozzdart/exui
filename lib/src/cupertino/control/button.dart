import 'package:flutter/cupertino.dart';

/// Extension methods for creating Cupertino-style buttons from any Widget.
///
/// This extension provides convenient methods to wrap any widget with
/// CupertinoButton variants, following iOS design guidelines.
///
/// Example usage:
/// ```dart
/// Text('Click me').cupertinoButton(
///   onPressed: () => print('Button pressed'),
/// );
/// ```
extension CupertinoButtonWidgetExtensions on Widget {
  /// Creates a standard CupertinoButton with this widget as its child.
  ///
  /// A CupertinoButton is an iOS-style button that follows Apple's Human Interface Guidelines.
  /// It provides haptic feedback and smooth animations when pressed.
  ///
  /// The button can be customized with various parameters including size, color,
  /// padding, and interaction behaviors.
  ///
  /// Parameters:
  /// * [sizeStyle] - The size style of the button (small, medium, large). Defaults to large.
  /// * [padding] - Internal padding around the child widget. If null, uses default padding based on size style.
  /// * [color] - Background color of the button. If null, the button is transparent.
  /// * [disabledColor] - Background color when the button is disabled. Defaults to quaternary system fill.
  /// * [minSize] - **Deprecated**: Use [minimumSize] instead. Minimum size for the button.
  /// * [minimumSize] - Minimum size constraint for the button. Takes precedence over [minSize].
  /// * [pressedOpacity] - Opacity level when the button is pressed. Defaults to 0.4.
  /// * [borderRadius] - Corner radius of the button. If null, uses default radius.
  /// * [alignment] - How to align the child within the button. Defaults to center.
  /// * [focusColor] - Color overlay when the button has focus (for accessibility).
  /// * [focusNode] - Focus node for keyboard navigation and accessibility.
  /// * [onFocusChange] - Callback when focus state changes.
  /// * [autofocus] - Whether this button should automatically receive focus. Defaults to false.
  /// * [onLongPress] - Callback for long press gestures. If null, long press is disabled.
  /// * [onPressed] - **Required** callback for tap gestures. If null, button is disabled.
  ///
  /// Returns a [CupertinoButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Icon(CupertinoIcons.heart).cupertinoButton(
  ///   color: CupertinoColors.systemRed,
  ///   onPressed: () => toggleFavorite(),
  ///   onLongPress: () => showFavoriteOptions(),
  /// );
  /// ```
  CupertinoButton cupertinoButton({
    CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
    EdgeInsetsGeometry? padding,
    Color? color,
    Color disabledColor = CupertinoColors.quaternarySystemFill,
    @Deprecated('Use minimumSize instead') double? minSize,
    Size? minimumSize,
    double? pressedOpacity = 0.4,
    BorderRadius? borderRadius,
    AlignmentGeometry alignment = Alignment.center,
    Color? focusColor,
    FocusNode? focusNode,
    void Function(bool)? onFocusChange,
    bool autofocus = false,
    void Function()? onLongPress,
    required void Function()? onPressed,
  }) =>
      CupertinoButton(
        sizeStyle: sizeStyle,
        padding: padding,
        color: color,
        disabledColor: disabledColor,
        minimumSize:
            minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
        pressedOpacity: pressedOpacity,
        borderRadius: borderRadius,
        alignment: alignment,
        focusColor: focusColor,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onPressed: onPressed,
        child: this,
      );

  /// Creates a filled CupertinoButton with this widget as its child.
  ///
  /// A filled CupertinoButton has a solid background color that follows the
  /// current iOS accent color (typically blue). This style is recommended
  /// for primary actions in your interface.
  ///
  /// The button automatically adapts to light and dark mode, and provides
  /// appropriate contrast ratios for accessibility.
  ///
  /// Parameters:
  /// * [sizeStyle] - The size style of the button (small, medium, large). Defaults to large.
  /// * [padding] - Internal padding around the child widget. If null, uses default padding based on size style.
  /// * [disabledColor] - Background color when the button is disabled. Defaults to tertiary system fill.
  /// * [minSize] - **Deprecated**: Use [minimumSize] instead. Minimum size for the button.
  /// * [minimumSize] - Minimum size constraint for the button. Takes precedence over [minSize].
  /// * [pressedOpacity] - Opacity level when the button is pressed. Defaults to 0.4.
  /// * [borderRadius] - Corner radius of the button. If null, uses default radius.
  /// * [alignment] - How to align the child within the button. Defaults to center.
  /// * [focusColor] - Color overlay when the button has focus (for accessibility).
  /// * [focusNode] - Focus node for keyboard navigation and accessibility.
  /// * [onFocusChange] - Callback when focus state changes.
  /// * [autofocus] - Whether this button should automatically receive focus. Defaults to false.
  /// * [onLongPress] - Callback for long press gestures. If null, long press is disabled.
  /// * [onPressed] - **Required** callback for tap gestures. If null, button is disabled.
  ///
  /// Returns a filled [CupertinoButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Save Changes').cupertinoFilledButton(
  ///   onPressed: () => saveDocument(),
  ///   sizeStyle: CupertinoButtonSize.large,
  /// );
  /// ```
  CupertinoButton cupertinoFilledButton({
    CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
    EdgeInsetsGeometry? padding,
    Color disabledColor = CupertinoColors.tertiarySystemFill,
    @Deprecated('Use minimumSize instead') double? minSize,
    Size? minimumSize,
    double? pressedOpacity = 0.4,
    BorderRadius? borderRadius,
    AlignmentGeometry alignment = Alignment.center,
    Color? focusColor,
    FocusNode? focusNode,
    void Function(bool)? onFocusChange,
    bool autofocus = false,
    void Function()? onLongPress,
    required void Function()? onPressed,
  }) =>
      CupertinoButton.filled(
        sizeStyle: sizeStyle,
        padding: padding,
        disabledColor: disabledColor,
        minimumSize:
            minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
        pressedOpacity: pressedOpacity,
        borderRadius: borderRadius,
        alignment: alignment,
        focusColor: focusColor,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onPressed: onPressed,
        child: this,
      );

  /// Creates a tinted CupertinoButton with this widget as its child.
  ///
  /// A tinted CupertinoButton has a subtle background tint that provides
  /// visual feedback while maintaining a lighter appearance than filled buttons.
  /// This style is ideal for secondary actions or when you need a button
  /// that's more prominent than a standard button but less prominent than a filled button.
  ///
  /// The tint color can be customized, and the button automatically handles
  /// light and dark mode adaptations.
  ///
  /// Parameters:
  /// * [sizeStyle] - The size style of the button (small, medium, large). Defaults to large.
  /// * [padding] - Internal padding around the child widget. If null, uses default padding based on size style.
  /// * [color] - Tint color for the button background. If null, uses the default system accent color.
  /// * [disabledColor] - Background color when the button is disabled. Defaults to tertiary system fill.
  /// * [minSize] - **Deprecated**: Use [minimumSize] instead. Minimum size for the button.
  /// * [minimumSize] - Minimum size constraint for the button. Takes precedence over [minSize].
  /// * [pressedOpacity] - Opacity level when the button is pressed. Defaults to 0.4.
  /// * [borderRadius] - Corner radius of the button. If null, uses default radius.
  /// * [alignment] - How to align the child within the button. Defaults to center.
  /// * [focusColor] - Color overlay when the button has focus (for accessibility).
  /// * [focusNode] - Focus node for keyboard navigation and accessibility.
  /// * [onFocusChange] - Callback when focus state changes.
  /// * [autofocus] - Whether this button should automatically receive focus. Defaults to false.
  /// * [onLongPress] - Callback for long press gestures. If null, long press is disabled.
  /// * [onPressed] - **Required** callback for tap gestures. If null, button is disabled.
  ///
  /// Returns a tinted [CupertinoButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Row([
  ///   Icon(CupertinoIcons.share),
  ///   SizedBox(width: 8),
  ///   Text('Share'),
  /// ]).cupertinoTintedButton(
  ///   color: CupertinoColors.systemGreen,
  ///   onPressed: () => shareContent(),
  /// );
  /// ```
  CupertinoButton cupertinoTintedButton({
    CupertinoButtonSize sizeStyle = CupertinoButtonSize.large,
    EdgeInsetsGeometry? padding,
    Color? color,
    Color disabledColor = CupertinoColors.tertiarySystemFill,
    @Deprecated('Use minimumSize instead') double? minSize,
    Size? minimumSize,
    double? pressedOpacity = 0.4,
    BorderRadius? borderRadius,
    AlignmentGeometry alignment = Alignment.center,
    Color? focusColor,
    FocusNode? focusNode,
    void Function(bool)? onFocusChange,
    bool autofocus = false,
    void Function()? onLongPress,
    required void Function()? onPressed,
  }) =>
      CupertinoButton.tinted(
        sizeStyle: sizeStyle,
        padding: padding,
        color: color,
        disabledColor: disabledColor,
        minimumSize:
            minimumSize ?? (minSize != null ? Size(minSize, minSize) : null),
        pressedOpacity: pressedOpacity,
        borderRadius: borderRadius,
        alignment: alignment,
        focusColor: focusColor,
        focusNode: focusNode,
        onFocusChange: onFocusChange,
        autofocus: autofocus,
        onLongPress: onLongPress,
        onPressed: onPressed,
        child: this,
      );
}
