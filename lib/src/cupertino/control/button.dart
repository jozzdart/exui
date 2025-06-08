import 'package:flutter/cupertino.dart';

extension CupertinoButtonWidgetExtensions on Widget {
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
