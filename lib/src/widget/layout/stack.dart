import 'package:flutter/widgets.dart';

extension StackWidgetListExtension on List<Widget> {
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

extension StackWidgetExtension on Widget {
  Widget stack({
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

  Widget stackPassthrough({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackPassthrough(
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  Widget stackExpand({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackExpand(
        alignment: alignment,
        textDirection: textDirection,
        clipBehavior: clipBehavior,
      );

  Widget stackLoose({
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.hardEdge,
  }) =>
      [this].stackLoose(
          alignment: alignment,
          textDirection: textDirection,
          clipBehavior: clipBehavior);
}
