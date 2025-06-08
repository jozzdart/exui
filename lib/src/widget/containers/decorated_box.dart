import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient decoration functionality.
///
/// This extension adds methods to easily apply various decorations to any widget,
/// including backgrounds, borders, shadows, gradients, and images. All methods
/// return new [DecoratedBox] widgets without modifying the original widget.
///
/// The extension provides both low-level control (decoratedBox) and high-level
/// convenience methods for common decoration patterns like shadows, borders,
/// and gradients.
///
/// Example usage:
/// ```dart
/// Text('Decorated text')
///   .shadowedBox(color: Colors.black26, blurRadius: 4)
///   .borderedBox(border: Border.all(color: Colors.blue));
/// ```
extension DecoratedBoxWidgetExtension on Widget {
  /// Wraps the widget in a [DecoratedBox] with the specified decoration.
  ///
  /// This is the base method that applies a [Decoration] to the widget.
  /// Other decoration methods in this extension use this method internally.
  ///
  /// Parameters:
  /// - [decoration]: The [Decoration] to apply to the widget.
  /// - [position]: Where to paint the decoration relative to the child.
  ///   Defaults to [DecorationPosition.background].
  ///
  /// Returns a [DecoratedBox] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Custom decoration')
  ///   .decoratedBox(
  ///     decoration: BoxDecoration(
  ///       color: Colors.blue,
  ///       borderRadius: BorderRadius.circular(8),
  ///     ),
  ///   );
  /// ```
  DecoratedBox decoratedBox({
    required Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) =>
      DecoratedBox(
        decoration: decoration,
        position: position,
        child: this,
      );

  /// Applies a [BoxDecoration] with comprehensive styling options.
  ///
  /// This method provides access to all [BoxDecoration] properties in a single
  /// call, making it easy to apply complex decorations. It's particularly useful
  /// when you need to combine multiple decoration effects.
  ///
  /// Parameters:
  /// - [color]: Background color for the decoration.
  /// - [image]: Background image for the decoration.
  /// - [border]: Border to draw around the decoration.
  /// - [borderRadius]: Radius for rounded corners.
  /// - [boxShadow]: List of shadows to cast behind the decoration.
  /// - [gradient]: Gradient to use as the background.
  /// - [backgroundBlendMode]: Blend mode for the background.
  /// - [shape]: Shape of the decoration. Defaults to [BoxShape.rectangle].
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the specified box decoration.
  ///
  /// Example:
  /// ```dart
  /// Container(width: 100, height: 100)
  ///   .decoratedBoxDecoration(
  ///     color: Colors.white,
  ///     borderRadius: BorderRadius.circular(12),
  ///     boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
  ///   );
  /// ```
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

  /// Applies a background image decoration to the widget.
  ///
  /// Creates a [DecoratedBox] with a [DecorationImage] that displays an image
  /// behind the widget. Provides comprehensive control over image display
  /// properties including fit, alignment, and filtering.
  ///
  /// Parameters:
  /// - [image]: The [ImageProvider] for the background image.
  /// - [onError]: Callback for handling image loading errors.
  /// - [colorFilter]: Color filter to apply to the image.
  /// - [fit]: How the image should be inscribed into the box.
  /// - [alignment]: How to align the image within its bounds.
  /// - [centerSlice]: Center slice for 9-patch images.
  /// - [repeat]: How to repeat the image if it doesn't fill the box.
  /// - [matchTextDirection]: Whether to flip the image for RTL text.
  /// - [scale]: Scale factor for the image.
  /// - [opacity]: Opacity of the image (0.0 to 1.0).
  /// - [filterQuality]: Quality of image filtering.
  /// - [invertColors]: Whether to invert the image colors.
  /// - [isAntiAlias]: Whether to apply anti-aliasing.
  /// - [position]: Where to paint the decoration.
  ///
  /// Returns a [DecoratedBox] widget with the image decoration.
  ///
  /// Example:
  /// ```dart
  /// Container(width: 200, height: 150)
  ///   .imageBox(
  ///     image: AssetImage('assets/background.jpg'),
  ///     fit: BoxFit.cover,
  ///     opacity: 0.8,
  ///   );
  /// ```
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

  /// Applies a gradient background decoration to the widget.
  ///
  /// Creates a [DecoratedBox] with the specified gradient as the background.
  /// Supports all Flutter gradient types including linear, radial, and sweep
  /// gradients.
  ///
  /// Parameters:
  /// - [gradient]: The [Gradient] to use as the background.
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the gradient decoration.
  ///
  /// Example:
  /// ```dart
  /// Container(width: 200, height: 100)
  ///   .gradientBox(
  ///     LinearGradient(
  ///       colors: [Colors.blue, Colors.purple],
  ///       begin: Alignment.topLeft,
  ///       end: Alignment.bottomRight,
  ///     ),
  ///   );
  /// ```
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

  /// Applies a shadow decoration to the widget.
  ///
  /// Creates a [DecoratedBox] with a single [BoxShadow] that casts a shadow
  /// behind the widget. This is useful for creating depth and elevation effects.
  ///
  /// Parameters:
  /// - [color]: Color of the shadow. Defaults to black.
  /// - [offset]: Offset of the shadow from the widget. Defaults to [Offset.zero].
  /// - [blurRadius]: Blur radius of the shadow. Defaults to 0.0 (sharp shadow).
  /// - [spreadRadius]: Spread radius of the shadow. Defaults to 0.0.
  /// - [blurStyle]: Style of the blur effect. Defaults to [BlurStyle.normal].
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the shadow decoration.
  ///
  /// Example:
  /// ```dart
  /// Card(
  ///   child: Text('Elevated card'),
  /// ).shadowedBox(
  ///   color: Colors.black26,
  ///   offset: Offset(0, 4),
  ///   blurRadius: 8,
  /// );
  /// ```
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

  /// Applies a border decoration to the widget.
  ///
  /// Creates a [DecoratedBox] with the specified border. The border can be
  /// combined with border radius for rounded corners.
  ///
  /// Parameters:
  /// - [border]: The [BoxBorder] to draw around the widget.
  /// - [borderRadius]: Optional border radius for rounded corners.
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the border decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Bordered text')
  ///   .borderedBox(
  ///     border: Border.all(color: Colors.red, width: 2),
  ///     borderRadius: BorderRadius.circular(8),
  ///   );
  /// ```
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

  /// Applies a shape decoration to the widget.
  ///
  /// Creates a [DecoratedBox] with the specified [BoxShape]. This is useful
  /// for creating circular or rectangular containers with specific shapes.
  ///
  /// Parameters:
  /// - [shape]: The [BoxShape] to apply to the decoration.
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the shape decoration.
  ///
  /// Example:
  /// ```dart
  /// Container(width: 80, height: 80, color: Colors.blue)
  ///   .shapedBox(BoxShape.circle); // Creates a circular container
  /// ```
  DecoratedBox shapedBox(
    BoxShape shape, {
    DecorationPosition position = DecorationPosition.background,
  }) =>
      decoratedBox(
        decoration: BoxDecoration(shape: shape),
        position: position,
      );

  /// Applies a circular border decoration to the widget.
  ///
  /// This is a convenience method that creates a circular border with the
  /// specified radius, color, and width. It combines border and border radius
  /// in a single method call.
  ///
  /// Parameters:
  /// - [radius]: The radius for the circular border.
  /// - [color]: The color of the border.
  /// - [width]: The width of the border line.
  /// - [position]: Where to paint the decoration. Defaults to background.
  ///
  /// Returns a [DecoratedBox] widget with the circular border decoration.
  ///
  /// Example:
  /// ```dart
  /// Avatar(user: currentUser)
  ///   .circularBorderBox(
  ///     radius: 40,
  ///     color: Colors.blue,
  ///     width: 3,
  ///   );
  /// ```
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
