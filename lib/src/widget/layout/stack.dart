import 'package:flutter/widgets.dart';

/// Extension on [List<Widget>] that provides convenient methods for creating
/// [Stack] widgets with different configurations.
///
/// This extension allows you to easily convert a list of widgets into a stack
/// layout with various fitting behaviors and alignment options.
///
/// Example:
/// ```dart
/// [
///   Container(color: Colors.red),
///   Container(color: Colors.blue),
/// ].stack(alignment: Alignment.center)
/// ```
extension StackWidgetListExtension on List<Widget> {
  /// Creates a [Stack] widget with the specified configuration.
  ///
  /// This is the base method that all other stack methods delegate to.
  /// It provides full control over all stack properties.
  ///
  /// Parameters:
  /// - [alignment]: How to align the non-positioned and partially-positioned
  ///   children in the stack. Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [fit]: How to size the non-positioned children in the stack.
  ///   Defaults to [StackFit.loose].
  /// - [clipBehavior]: The content will be clipped (or not) according to this
  ///   option. Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget containing all widgets from this list as children.
  Stack stack({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      Stack(
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        children: this,
      );

  /// Creates a [Stack] with [StackFit.passthrough] sizing behavior.
  ///
  /// In passthrough mode, the stack will pass through the constraints from
  /// its parent to its children, allowing them to size themselves naturally.
  /// This is useful when you want the stack to be as small as possible while
  /// still containing all its children.
  ///
  /// Parameters:
  /// - [alignment]: How to align the children in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with passthrough sizing behavior.
  Stack stackPassthrough({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      stack(
        fit: StackFit.passthrough,
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  /// Creates a [Stack] with [StackFit.expand] sizing behavior.
  ///
  /// In expand mode, the stack will force all non-positioned children to be
  /// as large as the stack itself. This is useful when you want all children
  /// to fill the entire available space.
  ///
  /// Parameters:
  /// - [alignment]: How to align the children in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with expand sizing behavior.
  Stack stackExpand({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      stack(
        fit: StackFit.expand,
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  /// Creates a [Stack] with [StackFit.loose] sizing behavior.
  ///
  /// In loose mode, the stack will be as large as its largest child.
  /// Non-positioned children will be given loose constraints, allowing them
  /// to size themselves naturally. This is the default behavior.
  ///
  /// Parameters:
  /// - [alignment]: How to align the children in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with loose sizing behavior.
  Stack stackLoose({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      stack(
        fit: StackFit.loose,
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );
}

/// Extension on [Widget] that provides convenient methods for creating
/// [Stack] widgets with a single child.
///
/// This extension allows you to easily wrap a single widget in a stack
/// layout, which is useful for positioning or layering additional widgets
/// on top of it later.
///
/// Example:
/// ```dart
/// Container(color: Colors.red)
///   .stack(alignment: Alignment.center)
/// ```
extension StackWidgetExtension on Widget {
  /// Creates a [Stack] widget containing this widget as the only child.
  ///
  /// This method wraps the current widget in a list and delegates to the
  /// [StackWidgetListExtension.stack] method.
  ///
  /// Parameters:
  /// - [alignment]: How to align the widget in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [fit]: How to size the widget in the stack.
  ///   Defaults to [StackFit.loose].
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget containing this widget as its only child.
  Stack stack({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stack(
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
      );

  /// Creates a [Stack] with [StackFit.passthrough] containing this widget.
  ///
  /// Wraps this widget in a stack with passthrough sizing behavior.
  /// See [StackWidgetListExtension.stackPassthrough] for details about
  /// passthrough behavior.
  ///
  /// Parameters:
  /// - [alignment]: How to align the widget in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with passthrough sizing behavior.
  Stack stackPassthrough({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackPassthrough(
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  /// Creates a [Stack] with [StackFit.expand] containing this widget.
  ///
  /// Wraps this widget in a stack with expand sizing behavior.
  /// See [StackWidgetListExtension.stackExpand] for details about
  /// expand behavior.
  ///
  /// Parameters:
  /// - [alignment]: How to align the widget in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with expand sizing behavior.
  Stack stackExpand({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackExpand(
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  /// Creates a [Stack] with [StackFit.loose] containing this widget.
  ///
  /// Wraps this widget in a stack with loose sizing behavior.
  /// See [StackWidgetListExtension.stackLoose] for details about
  /// loose behavior.
  ///
  /// Parameters:
  /// - [alignment]: How to align the widget in the stack.
  ///   Defaults to [AlignmentDirectional.topStart].
  /// - [textDirection]: The text direction to use when resolving alignment.
  /// - [clipBehavior]: The content clipping behavior.
  ///   Defaults to [Clip.hardEdge].
  ///
  /// Returns a [Stack] widget with loose sizing behavior.
  Stack stackLoose({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackLoose(
          alignment: alignment,
          textDirection: textDirection,
          clipBehavior: clipBehavior);
}
