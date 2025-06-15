import 'package:flutter/widgets.dart';

/// Extension methods for [Widget] that provide convenient opacity functionality.
///
/// This extension adds methods to easily apply opacity effects to any widget.
/// All methods return new [Opacity] widgets without modifying the original widget.
///
/// The extension provides both precise control (opacity with exact values) and
/// convenient shortcuts for common opacity levels (half, quarter, transparent).
///
/// Opacity values range from 0.0 (completely transparent) to 1.0 (completely opaque).
///
/// Example usage:
/// ```dart
/// Image.asset('photo.jpg')
///   .opacity(0.8)  // 80% opacity
///   .opacityHalf() // 50% opacity
/// ```
extension OpacityWidgetExtension on Widget {
  /// Applies the specified opacity to the widget.
  ///
  /// Creates an [Opacity] widget that makes the child partially transparent.
  /// This is the base method that other opacity methods in this extension use internally.
  ///
  /// The opacity value should be between 0.0 (completely transparent) and 1.0 (completely opaque).
  /// Values outside this range will be clamped.
  ///
  /// Parameters:
  /// - [opacity]: The opacity level (0.0 to 1.0).
  /// - [alwaysIncludeSemantics]: Whether to include semantics information even when
  ///   the widget is completely transparent. Defaults to false.
  ///
  /// Returns an [Opacity] widget containing this widget as its child.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 100,
  ///   color: Colors.blue,
  /// ).opacity(0.7); // 70% opacity
  /// ```
  Opacity opacity(double opacity, {bool alwaysIncludeSemantics = false}) {
    assert(opacity >= 0.0 && opacity <= 1.0,
        'Opacity must be between 0.0 and 1.0');
    return Opacity(
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: this,
    );
  }

  /// Applies opacity using a percentage value.
  ///
  /// This is a convenience method that converts a percentage (0-100) to an opacity
  /// value (0.0-1.0). Useful when working with percentage-based opacity values.
  ///
  /// Parameters:
  /// - [percent]: The opacity percentage (0 to 100).
  ///
  /// Returns an [Opacity] widget with the calculated opacity.
  ///
  /// Example:
  /// ```dart
  /// Text('Semi-transparent text')
  ///   .opacityPercent(75); // 75% opacity (equivalent to 0.75)
  /// ```
  Opacity opacityPercent(double percent) => opacity(percent / 100);

  /// Applies 50% opacity to the widget.
  ///
  /// This is a convenience method equivalent to calling `opacity(0.5)`.
  /// Commonly used for creating semi-transparent overlays or disabled states.
  ///
  /// Returns an [Opacity] widget with 50% opacity.
  ///
  /// Example:
  /// ```dart
  /// Icon(Icons.star)
  ///   .opacityHalf(); // Creates a semi-transparent star icon
  /// ```
  Opacity opacityHalf() => opacity(0.5);

  /// Applies 25% opacity to the widget.
  ///
  /// This is a convenience method equivalent to calling `opacity(0.25)`.
  /// Useful for creating subtle background elements or very faded content.
  ///
  /// Returns an [Opacity] widget with 25% opacity.
  ///
  /// Example:
  /// ```dart
  /// Image.asset('watermark.png')
  ///   .opacityQuarter(); // Creates a subtle watermark
  /// ```
  Opacity opacityQuarter() => opacity(0.25);

  /// Makes the widget completely transparent (0% opacity).
  ///
  /// This is a convenience method equivalent to calling `opacity(0.0)`.
  /// The widget will be invisible but still take up space in the layout.
  ///
  /// Returns an [Opacity] widget with 0% opacity.
  ///
  /// Example:
  /// ```dart
  /// Text('Hidden text')
  ///   .opacityZero(); // Text is invisible but space is preserved
  /// ```
  Opacity opacityZero() => opacity(0);

  /// Makes the widget completely transparent.
  ///
  /// This is an alias for [opacityZero] that provides semantic clarity when
  /// the intent is to make something transparent.
  ///
  /// Returns an [Opacity] widget with 0% opacity.
  ///
  /// Example:
  /// ```dart
  /// Container(color: Colors.red)
  ///   .opacityTransparent(); // Transparent container
  /// ```
  Opacity opacityTransparent() => opacityZero();

  /// Makes the widget invisible.
  ///
  /// This is an alias for [opacityZero] that provides semantic clarity when
  /// the intent is to make something invisible while preserving layout space.
  ///
  /// Returns an [Opacity] widget with 0% opacity.
  ///
  /// Example:
  /// ```dart
  /// Widget buildConditionalContent() {
  ///   return shouldShow
  ///     ? Text('Visible content')
  ///     : Text('Hidden content').opacityInvisible();
  /// }
  /// ```
  Opacity opacityInvisible() => opacityZero();
}
