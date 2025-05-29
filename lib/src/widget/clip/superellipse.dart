import 'dart:math';

import 'package:flutter/widgets.dart';

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
  Widget clipSuperellipse([
    double n = 4,
    int steps = 64,
    Clip clipBehavior = Clip.antiAlias,
  ]) {
    return ClipPath(
      clipper: _SuperellipseClipper(n, steps),
      clipBehavior: clipBehavior,
      child: this,
    );
  }
}

class _SuperellipseClipper extends CustomClipper<Path> {
  final double n;
  final int steps;

  const _SuperellipseClipper([
    this.n = 4,
    this.steps = 64,
  ]);

  // Static cache map
  static final Map<_SuperellipseCacheKey, Path> _cache = {};

  @override
  Path getClip(Size size) {
    final key = _SuperellipseCacheKey(n: n, steps: steps, size: size);

    // Return cached path if exists
    if (_cache.containsKey(key)) return _cache[key]!;

    // Generate and cache
    final a = size.width / 2;
    final b = size.height / 2;
    final cx = a;
    final cy = b;

    final path = Path();
    for (int i = 0; i <= steps; i++) {
      final theta = (2 * pi * i) / steps;
      final cosT = cos(theta);
      final sinT = sin(theta);
      final x = a * pow(cosT.abs(), 2 / n) * cosT.sign;
      final y = b * pow(sinT.abs(), 2 / n) * sinT.sign;

      if (i == 0) {
        path.moveTo(cx + x, cy + y);
      } else {
        path.lineTo(cx + x, cy + y);
      }
    }

    path.close();
    _cache[key] = path;
    return path;
  }

  @override
  bool shouldReclip(covariant _SuperellipseClipper oldClipper) =>
      n != oldClipper.n || steps != oldClipper.steps;
}

class _SuperellipseCacheKey {
  final double n;
  final int steps;
  final Size size;

  const _SuperellipseCacheKey({
    required this.n,
    required this.steps,
    required this.size,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _SuperellipseCacheKey &&
          n == other.n &&
          steps == other.steps &&
          size == other.size;

  @override
  int get hashCode => n.hashCode ^ steps.hashCode ^ size.hashCode;
}
