import 'package:flutter/material.dart';

/// Extension methods for creating various types of Material Design buttons
/// from any [Widget].
///
/// This extension provides a fluent API for wrapping widgets in different
/// button types including [ElevatedButton], [FilledButton], [OutlinedButton],
/// and [TextButton], along with their icon variants.
///
/// All methods follow Material Design 3 specifications and provide
/// comprehensive customization options for styling, behavior, and accessibility.
///
/// Example usage:
/// ```dart
/// Text('Click me')
///   .elevatedButton(onPressed: () => print('Pressed!'))
/// ```
extension ElevatedButtonWidgetExtensions on Widget {
  /// Creates an [ElevatedButton] with this widget as its child.
  ///
  /// Elevated buttons are high-emphasis buttons that are distinguished by their
  /// use of elevation and fill. They contain actions that are primary to your app.
  ///
  /// The [onPressed] callback is called when the button is tapped or otherwise
  /// activated. If [onPressed] is null, the button will be disabled.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  ///
  /// Returns an [ElevatedButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Save')
  ///   .elevatedButton(
  ///     onPressed: () => saveData(),
  ///     style: ElevatedButton.styleFrom(
  ///       backgroundColor: Colors.blue,
  ///     ),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [ElevatedButton], the underlying Material Design elevated button.
  /// * [elevatedIconButton], for creating elevated buttons with icons.
  ElevatedButton elevatedButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
  }) =>
      ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        child: this,
      );

  /// Creates an [ElevatedButton.icon] with this widget as its label and an optional icon.
  ///
  /// This creates an elevated button with both an icon and a label. The icon and label
  /// are arranged horizontally according to the [iconAlignment] parameter.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [icon] - The icon widget to display. If null, no icon is shown.
  /// * [iconAlignment] - How to align the icon relative to the label.
  ///
  /// Returns an [ElevatedButton] configured as an icon button with this widget as the label.
  ///
  /// Example:
  /// ```dart
  /// Text('Download')
  ///   .elevatedIconButton(
  ///     onPressed: () => downloadFile(),
  ///     icon: Icon(Icons.download),
  ///     iconAlignment: IconAlignment.start,
  ///   )
  /// ```
  ///
  /// See also:
  /// * [ElevatedButton.icon], the underlying Material Design elevated icon button.
  /// * [elevatedButton], for creating elevated buttons without icons.
  ElevatedButton elevatedIconButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    Widget? icon,
    IconAlignment? iconAlignment,
  }) =>
      ElevatedButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        icon: icon,
        label: this,
        iconAlignment: iconAlignment,
      );

  /// Creates a [FilledButton] with this widget as its child.
  ///
  /// Filled buttons are high-emphasis buttons with a solid background color.
  /// They're used for the most important actions in your app and have the
  /// highest visual impact after the floating action button.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  ///
  /// Returns a [FilledButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Submit')
  ///   .filledButton(
  ///     onPressed: () => submitForm(),
  ///     style: FilledButton.styleFrom(
  ///       backgroundColor: Theme.of(context).colorScheme.primary,
  ///     ),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [FilledButton], the underlying Material Design filled button.
  /// * [filledTonalButton], for a less prominent filled button variant.
  /// * [filledIconButton], for creating filled buttons with icons.
  FilledButton filledButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior = Clip.none,
    WidgetStatesController? statesController,
  }) =>
      FilledButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        child: this,
      );

  /// Creates a [FilledButton.tonal] with this widget as its child.
  ///
  /// Filled tonal buttons are medium-emphasis buttons that are an alternative
  /// middle ground between filled and outlined buttons. They can be used in
  /// contexts where a lower-priority button requires slightly more emphasis
  /// than an outline would give.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  ///
  /// Returns a [FilledButton] configured as a tonal variant with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Add to Cart')
  ///   .filledTonalButton(
  ///     onPressed: () => addToCart(),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [FilledButton.tonal], the underlying Material Design filled tonal button.
  /// * [filledButton], for the standard filled button variant.
  /// * [filledTonalIconButton], for creating filled tonal buttons with icons.
  FilledButton filledTonalButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior = Clip.none,
    WidgetStatesController? statesController,
  }) =>
      FilledButton.tonal(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        child: this,
      );

  /// Creates a [FilledButton.icon] with this widget as its label and an optional icon.
  ///
  /// This creates a filled button with both an icon and a label. The icon and label
  /// are arranged horizontally according to the [iconAlignment] parameter.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [icon] - The icon widget to display. If null, no icon is shown.
  /// * [iconAlignment] - How to align the icon relative to the label.
  ///
  /// Returns a [FilledButton] configured as an icon button with this widget as the label.
  ///
  /// Example:
  /// ```dart
  /// Text('Create')
  ///   .filledIconButton(
  ///     onPressed: () => createNew(),
  ///     icon: Icon(Icons.add),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [FilledButton.icon], the underlying Material Design filled icon button.
  /// * [filledButton], for creating filled buttons without icons.
  FilledButton filledIconButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    Widget? icon,
    IconAlignment? iconAlignment,
  }) =>
      FilledButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        icon: icon,
        label: this,
        iconAlignment: iconAlignment,
      );

  /// Creates a [FilledButton.tonalIcon] with this widget as its label and an optional icon.
  ///
  /// This creates a filled tonal button with both an icon and a label. The icon and label
  /// are arranged horizontally according to the [iconAlignment] parameter.
  ///
  /// Filled tonal icon buttons provide a middle ground between filled and outlined
  /// icon buttons, offering moderate emphasis with a subtle background.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [icon] - The icon widget to display. If null, no icon is shown.
  /// * [iconAlignment] - How to align the icon relative to the label.
  ///
  /// Returns a [FilledButton] configured as a tonal icon button with this widget as the label.
  ///
  /// Example:
  /// ```dart
  /// Text('Share')
  ///   .filledTonalIconButton(
  ///     onPressed: () => shareContent(),
  ///     icon: Icon(Icons.share),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [FilledButton.tonalIcon], the underlying Material Design filled tonal icon button.
  /// * [filledTonalButton], for creating filled tonal buttons without icons.
  FilledButton filledTonalIconButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    Widget? icon,
    IconAlignment? iconAlignment,
  }) =>
      FilledButton.tonalIcon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        icon: icon,
        label: this,
        iconAlignment: iconAlignment,
      );

  /// Creates an [OutlinedButton] with this widget as its child.
  ///
  /// Outlined buttons are medium-emphasis buttons. They contain actions that are
  /// important but aren't the primary action in an app. Outlined buttons pair
  /// well with filled buttons to indicate an alternative, secondary action.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  ///
  /// Returns an [OutlinedButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Cancel')
  ///   .outlinedButton(
  ///     onPressed: () => Navigator.pop(context),
  ///     style: OutlinedButton.styleFrom(
  ///       side: BorderSide(color: Colors.red),
  ///     ),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [OutlinedButton], the underlying Material Design outlined button.
  /// * [outlinedIconButton], for creating outlined buttons with icons.
  OutlinedButton outlinedButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        child: this,
      );

  /// Creates an [OutlinedButton.icon] with this widget as its label and an optional icon.
  ///
  /// This creates an outlined button with both an icon and a label. The icon and label
  /// are arranged horizontally according to the [iconAlignment] parameter.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [icon] - The icon widget to display. If null, no icon is shown.
  /// * [iconAlignment] - How to align the icon relative to the label.
  ///
  /// Returns an [OutlinedButton] configured as an icon button with this widget as the label.
  ///
  /// Example:
  /// ```dart
  /// Text('Edit')
  ///   .outlinedIconButton(
  ///     onPressed: () => editItem(),
  ///     icon: Icon(Icons.edit),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [OutlinedButton.icon], the underlying Material Design outlined icon button.
  /// * [outlinedButton], for creating outlined buttons without icons.
  OutlinedButton outlinedIconButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    Widget? icon,
    IconAlignment? iconAlignment,
  }) =>
      OutlinedButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        icon: icon,
        label: this,
        iconAlignment: iconAlignment,
      );

  /// Creates a [TextButton] with this widget as its child.
  ///
  /// Text buttons are low-emphasis buttons. They're typically used for less-important
  /// actions, including those located in dialogs and cards. In cards, text buttons
  /// help maintain an emphasis hierarchy.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [isSemanticButton] - Whether this button should be treated as a button by screen readers.
  ///
  /// Returns a [TextButton] with this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Learn More')
  ///   .textButton(
  ///     onPressed: () => showMoreInfo(),
  ///     style: TextButton.styleFrom(
  ///       foregroundColor: Colors.blue,
  ///     ),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [TextButton], the underlying Material Design text button.
  /// * [textIconButton], for creating text buttons with icons.
  TextButton textButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    bool? isSemanticButton = true,
  }) =>
      TextButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: this,
      );

  /// Creates a [TextButton.icon] with this widget as its label and an optional icon.
  ///
  /// This creates a text button with both an icon and a label. The icon and label
  /// are arranged horizontally according to the [iconAlignment] parameter.
  ///
  /// Text icon buttons are ideal for actions that benefit from an icon to clarify
  /// their purpose while maintaining low visual emphasis.
  ///
  /// Parameters:
  /// * [onPressed] - Called when the button is pressed. If null, button is disabled.
  /// * [onLongPress] - Called when the button is long-pressed.
  /// * [onHover] - Called when a pointer enters or exits the button area.
  /// * [onFocusChange] - Called when the focus state of the button changes.
  /// * [style] - Customizes the button's appearance and behavior.
  /// * [focusNode] - An optional focus node to use as the focus node for this widget.
  /// * [autofocus] - Whether this widget should focus itself if nothing else is focused.
  /// * [clipBehavior] - The content will be clipped (or not) according to this option.
  /// * [statesController] - Represents the interactive state of the button.
  /// * [icon] - The icon widget to display. If null, no icon is shown.
  /// * [iconAlignment] - How to align the icon relative to the label.
  ///
  /// Returns a [TextButton] configured as an icon button with this widget as the label.
  ///
  /// Example:
  /// ```dart
  /// Text('Help')
  ///   .textIconButton(
  ///     onPressed: () => showHelp(),
  ///     icon: Icon(Icons.help_outline),
  ///   )
  /// ```
  ///
  /// See also:
  /// * [TextButton.icon], the underlying Material Design text icon button.
  /// * [textButton], for creating text buttons without icons.
  TextButton textIconButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    Widget? icon,
    IconAlignment? iconAlignment,
  }) =>
      TextButton.icon(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        icon: icon,
        label: this,
        iconAlignment: iconAlignment,
      );
}
