import 'package:flutter/widgets.dart';

extension DecoratedBoxWidgetExtension on Widget {
  DecoratedBox decoratedBox({
    required Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  DecoratedBox decoratedBoxDecoration({
    Color? color,
    DecorationImage? image,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    Gradient? gradient,
    BlendMode? backgroundBlendMode,
    BoxShape shape = BoxShape.rectangle,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          image: image,
          border: border,
          borderRadius: borderRadius,
          boxShadow: boxShadow,
          gradient: gradient,
          backgroundBlendMode: backgroundBlendMode,
        ),
        position: position,
        child: this,
      );

  DecoratedBox imageBox({
    required ImageProvider<Object> image,
    void Function(Object, StackTrace?)? onError,
    ColorFilter? colorFilter,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    Rect? centerSlice,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    bool matchTextDirection = false,
    double scale = 1.0,
    double opacity = 1.0,
    FilterQuality filterQuality = FilterQuality.medium,
    bool invertColors = false,
    bool isAntiAlias = false,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            onError: onError,
            colorFilter: colorFilter,
            fit: fit,
            alignment: alignment,
            centerSlice: centerSlice,
            repeat: repeat,
            matchTextDirection: matchTextDirection,
            scale: scale,
            opacity: opacity,
            filterQuality: filterQuality,
          ),
        ),
        position: position,
      );

  DecoratedBox gradientBox(
    Gradient gradient, {
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        position: position,
      );

  // Same as Shadow._kColorDefault
  static const int _kColorDefault = 0xFF000000;

  DecoratedBox shadowedBox({
    Color color = const Color(_kColorDefault),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    double spreadRadius = 0.0,
    BlurStyle blurStyle = BlurStyle.normal,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: color,
              offset: offset,
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
              blurStyle: blurStyle,
            )
          ],
        ),
        position: position,
      );

  DecoratedBox borderedBox({
    required BoxBorder border,
    BorderRadiusGeometry? borderRadius,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(
          border: border,
          borderRadius: borderRadius,
        ),
        position: position,
      );

  DecoratedBox shapedBox(
    BoxShape shape, {
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(shape: shape),
        position: position,
      );

  DecoratedBox circularBorderBox({
    required double radius,
    required Color color,
    required double width,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      borderedBox(
        border: Border.all(
          color: color,
          width: width,
        ),
        borderRadius: BorderRadius.circular(radius),
        position: position,
      );
}
