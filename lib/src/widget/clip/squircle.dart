import 'package:flutter/widgets.dart';

/// Extension to clip any widget into a squircle (rounded square) shape.
///
/// A squircle is a shape between a square and a circle, commonly used
/// in modern UI design (e.g., iOS app icons, modern card designs).
/// This extension provides methods to wrap widgets in a [ClipPath] using
/// Flutter's [ContinuousRectangleBorder] for visually appealing,
/// smoothly rounded corners that create the characteristic squircle effect.
///
/// ## Performance Considerations
/// - Uses [ShapeBorderClipper] which is optimized for shape-based clipping
/// - [Clip.antiAlias] provides smooth edges but may impact performance on complex widgets
/// - Consider using [Clip.hardEdge] for better performance when anti-aliasing isn't critical
///
/// ## Design Guidelines
/// The [radiusFactor] parameter controls the curvature:
/// - Lower values (1.0-2.0): More circular, softer appearance
/// - Medium values (2.5-3.0): Balanced squircle effect (recommended)
/// - Higher values (4.0+): More squared corners with subtle rounding
///
/// ## Common Use Cases
/// - App icons and avatars
/// - Modern card designs
/// - Button shapes
/// - Image containers
/// - UI elements requiring smooth, organic corners
///
/// Example:
/// ```dart
/// // Basic usage with default parameters
/// Container(
///   width: 100,
///   height: 100,
///   color: Colors.blue,
/// ).clipSquircle();
///
/// // Custom radius factor for more circular appearance
/// Image.asset('avatar.png').clipSquircle(2.0);
///
/// // Performance-optimized for simple shapes
/// Card(child: content).clipSquircle(3.0, Clip.hardEdge);
/// ```
///
extension SquircleWidgetExtensions on Widget {
  /// Clips the widget using a squircle (super-ellipse) shape.
  ///
  /// Creates a smooth transition between square and circular shapes using
  /// Flutter's [ContinuousRectangleBorder]. This method is ideal for modern
  /// UI designs that require organic, visually pleasing rounded corners.
  ///
  /// ## Parameters
  /// - [radiusFactor]: Controls the curvature of the squircle corners.
  ///   - Range: Typically 1.0 to 6.0
  ///   - Default: 2.5 (balanced appearance)
  ///   - Lower values create more circular corners
  ///   - Higher values create more rectangular corners with subtle rounding
  ///
  /// - [clipBehavior]: Defines how the clipping is rendered.
  ///   - [Clip.antiAlias]: Smooth edges, higher quality (default)
  ///   - [Clip.hardEdge]: Better performance, may show aliasing
  ///   - [Clip.antiAliasWithSaveLayer]: Highest quality, significant performance cost
  ///   - [Clip.none]: No clipping applied
  ///
  /// ## Returns
  /// A [ClipPath] widget that wraps the original widget with squircle clipping.
  ///
  /// ## Performance Notes
  /// - Anti-aliased clipping may impact performance on complex child widgets
  /// - Consider the widget tree depth when applying multiple clips
  /// - Test on target devices for performance-critical applications
  ///
  /// ## Example Usage
  /// ```dart
  /// // Standard squircle with balanced curvature
  /// Container(
  ///   width: 80,
  ///   height: 80,
  ///   decoration: BoxDecoration(color: Colors.red),
  /// ).clipSquircle();
  ///
  /// // More circular appearance for avatars
  /// CircleAvatar(
  ///   backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
  /// ).clipSquircle(2.0);
  ///
  /// // Performance-optimized for animations
  /// AnimatedContainer(
  ///   duration: Duration(milliseconds: 300),
  ///   color: isSelected ? Colors.blue : Colors.grey,
  /// ).clipSquircle(3.0, Clip.hardEdge);
  /// ```
  ///
  /// See also:
  /// - [clipContinuousRectangle] for an alias to this method
  /// - [ContinuousRectangleBorder] for the underlying shape implementation
  /// - [ClipPath] for the clipping widget used internally
  ClipPath clipSquircle([
    double radiusFactor = 2.5,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipPath(
      clipper: ShapeBorderClipper(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radiusFactor),
          ),
        ),
      ),
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  /// Clips the widget using a continuous rectangle shape (alias for [clipSquircle]).
  ///
  /// This method provides an alternative name for [clipSquircle] that more
  /// accurately reflects the underlying [ContinuousRectangleBorder] implementation.
  /// Both methods produce identical results and can be used interchangeably.
  ///
  /// The continuous rectangle shape creates smooth, organic corners that are
  /// mathematically defined as a super-ellipse, providing a more natural
  /// appearance than traditional rounded rectangles.
  ///
  /// ## Parameters
  /// - [radiusFactor]: Controls the curvature of the continuous rectangle corners.
  ///   - Range: Typically 1.0 to 6.0
  ///   - Default: 2.5 (balanced appearance)
  ///   - Lower values: More circular/organic appearance
  ///   - Higher values: More rectangular with subtle corner rounding
  ///
  /// - [clipBehavior]: Defines the clipping rendering quality and performance.
  ///   - [Clip.antiAlias]: Smooth edges with good quality/performance balance (default)
  ///   - [Clip.hardEdge]: Fastest rendering, may show edge aliasing
  ///   - [Clip.antiAliasWithSaveLayer]: Highest quality, significant performance impact
  ///   - [Clip.none]: Disables clipping entirely
  ///
  /// ## Returns
  /// A [ClipPath] widget that applies continuous rectangle clipping to the child widget.
  ///
  /// ## When to Use This Method
  /// - When you prefer the more descriptive "continuous rectangle" terminology
  /// - In codebases where mathematical precision in naming is important
  /// - When working with design systems that use "continuous rectangle" terminology
  ///
  /// ## Example Usage
  /// ```dart
  /// // Equivalent to clipSquircle() with same parameters
  /// Card(
  ///   child: ListTile(
  ///     title: Text('Continuous Rectangle'),
  ///     subtitle: Text('Smooth organic corners'),
  ///   ),
  /// ).clipContinuousRectangle(2.8);
  ///
  /// // High-performance variant for animations
  /// TweenAnimationBuilder<double>(
  ///   tween: Tween(begin: 0.0, end: 1.0),
  ///   duration: Duration(seconds: 2),
  ///   builder: (context, value, child) {
  ///     return Container(
  ///       width: 100 * value,
  ///       height: 100 * value,
  ///       color: Colors.green,
  ///     ).clipContinuousRectangle(2.5, Clip.hardEdge);
  ///   },
  /// );
  /// ```
  ///
  /// See also:
  /// - [clipSquircle] for the primary method with identical functionality
  /// - [ContinuousRectangleBorder] for the underlying shape mathematics
  /// - [ShapeBorderClipper] for the clipping implementation details
  ClipPath clipContinuousRectangle([
    double radiusFactor = 2.5,
    Clip clipBehavior = Clip.antiAlias,
  ]) =>
      clipSquircle(radiusFactor, clipBehavior);
}
