import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient box fitting functionality.
///
/// This extension adds methods to easily wrap widgets in [FittedBox] widgets with
/// various fitting strategies. All methods return new [FittedBox] widgets without
/// modifying the original widget.
///
/// [FittedBox] scales and positions its child within itself according to the specified
/// [BoxFit] strategy. This is particularly useful for ensuring widgets fit properly
/// within constrained spaces while maintaining their aspect ratio or filling the space.
///
/// **Box Fit Strategies:**
/// - **contain**: Scale to fit entirely within the box (may leave empty space)
/// - **cover**: Scale to fill the entire box (may crop content)
/// - **fill**: Stretch to fill the box exactly (may distort aspect ratio)
/// - **fitWidth**: Scale to fit the width exactly (may crop height)
/// - **fitHeight**: Scale to fit the height exactly (may crop width)
/// - **scaleDown**: Scale down only if needed (never scale up)
///
/// Example usage:
/// ```dart
/// Icon(Icons.star, size: 100)
///   .fitContain() // Scales icon to fit within available space
///   .sizedBox(width: 50, height: 50);
/// ```
extension BoxFitWidgetExtensions on Widget {
  /// Wraps the widget in a [FittedBox] with the specified fitting strategy.
  ///
  /// Creates a [FittedBox] that scales and positions its child according to the
  /// specified [BoxFit] strategy. This is the base method that other fitting
  /// methods in this extension use internally.
  ///
  /// Parameters:
  /// - [fit]: How the child should be inscribed into the available space.
  ///   Defaults to [BoxFit.contain].
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Text('Large Text', style: TextStyle(fontSize: 48))
  ///   .fittedBox(
  ///     fit: BoxFit.scaleDown,
  ///     alignment: Alignment.centerLeft,
  ///   );
  /// ```
  FittedBox fittedBox({
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      FittedBox(
        fit: fit,
        alignment: alignment,
        clipBehavior: clipBehavior,
        child: this,
      );

  /// Wraps the widget in a [FittedBox] with [BoxFit.contain] strategy.
  ///
  /// Scales the widget to fit entirely within the available space while maintaining
  /// its aspect ratio. The widget will be as large as possible without being cropped,
  /// but may leave empty space if the aspect ratios don't match.
  ///
  /// This is the most commonly used fitting strategy as it preserves the entire
  /// content while scaling appropriately.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget with contain fitting.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('large_image.jpg')
  ///   .fitContain() // Scales image to fit without cropping
  ///   .sizedBox(width: 200, height: 100);
  /// ```
  FittedBox fitContain({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.contain,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  /// Wraps the widget in a [FittedBox] with [BoxFit.cover] strategy.
  ///
  /// Scales the widget to completely fill the available space while maintaining
  /// its aspect ratio. The widget will fill the entire space, but parts may be
  /// cropped if the aspect ratios don't match.
  ///
  /// This is useful when you want to fill a space completely without distortion,
  /// and cropping is acceptable.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget with cover fitting.
  ///
  /// Example:
  /// ```dart
  /// Image.network('https://example.com/photo.jpg')
  ///   .fitCover() // Fills space completely, may crop image
  ///   .sizedBox(width: 150, height: 150);
  /// ```
  FittedBox fitCover({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.cover,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  /// Wraps the widget in a [FittedBox] with [BoxFit.fill] strategy.
  ///
  /// Stretches the widget to exactly fill the available space, potentially
  /// distorting the aspect ratio. The widget will fill the entire space
  /// without any cropping or empty space.
  ///
  /// **Warning**: This may distort the widget's appearance if the aspect
  /// ratios don't match. Use with caution for visual content.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget with fill fitting.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 50,
  ///   color: Colors.blue,
  /// ).fitFill() // Stretches to fill exactly, may distort
  ///  .sizedBox(width: 200, height: 200);
  /// ```
  FittedBox fitFill({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.fill,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  /// Wraps the widget in a [FittedBox] with [BoxFit.scaleDown] strategy.
  ///
  /// Scales the widget down to fit within the available space if it's larger,
  /// but never scales up. If the widget is already smaller than the available
  /// space, it remains at its original size.
  ///
  /// This is useful for preventing widgets from becoming too large while
  /// preserving their original size when they're already appropriately sized.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget with scale-down fitting.
  ///
  /// Example:
  /// ```dart
  /// Text('This might be too large', style: TextStyle(fontSize: 24))
  ///   .fitScaleDown() // Scales down only if needed
  ///   .sizedBox(width: 100, height: 30);
  /// ```
  FittedBox fitScaleDown({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.scaleDown,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );

  /// Wraps the widget in a [FittedBox] with [BoxFit.fitHeight] strategy.
  ///
  /// Scales the widget to exactly match the available height while maintaining
  /// aspect ratio. The width may extend beyond the available space and be cropped,
  /// or there may be empty space horizontally.
  ///
  /// This is useful when height is the critical dimension and horizontal
  /// cropping or empty space is acceptable.
  ///
  /// Parameters:
  /// - [alignment]: How to align the child within the fitted box.
  ///   Defaults to [Alignment.center].
  /// - [clipBehavior]: How to clip the child if it overflows.
  ///   Defaults to [Clip.none].
  ///
  /// Returns a [FittedBox] widget with fit-height fitting.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('tall_image.jpg')
  ///   .fitHeight() // Fits height exactly, may crop width
  ///   .sizedBox(width: 100, height: 200);
  /// ```
  FittedBox fitHeight({
    AlignmentGeometry alignment = Alignment.center,
    Clip clipBehavior = Clip.none,
  }) =>
      fittedBox(
        fit: BoxFit.fitHeight,
        alignment: alignment,
        clipBehavior: clipBehavior,
      );
}
