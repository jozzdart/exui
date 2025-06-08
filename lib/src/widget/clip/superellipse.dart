import 'package:flutter/widgets.dart';

import 'jozz_clips.dart';

/// Clips the widget into a superellipse (squircle-like) shape using a
/// [CustomClipper] based on the superellipse equation.
///
/// A superellipse is defined by the formula:
/// `|x/a|ⁿ + |y/b|ⁿ = 1`, which creates a smooth shape between a circle and a square.
/// This method uses a parametric approximation with [steps] segments.
///
/// ### Parameters:
/// - [n]: The superellipse exponent. Values between 2 and 6 are common.
///   - `n = 2` → circle
///   - `n = 4` → typical squircle
///   - `n > 4` → more rectangular with smooth corners
/// - [steps]: Number of segments used to approximate the shape. Higher values
///   create smoother curves but may impact performance.
/// - [clipBehavior]: The clip behavior to use (default is [Clip.antiAlias]).
///
/// ### Performance:
/// Internally uses a static cache keyed by `n`, `steps`, and widget size,
/// so repeated clips with the same parameters are extremely fast.
///
/// ### Example:
/// ```dart
/// Container(color: Colors.blue)
///   .clipSuperellipse(4);
/// ```
///
extension SuperellipseWidgetExtensions on Widget {
  ClipPath clipSuperellipse([
    double n = 4,
    int steps = 64,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipPath(
      clipper: JozzSuperellipseClipper(n, steps),
      clipBehavior: clipBehavior,
      child: this,
    );
  }
}
