import 'package:flutter/widgets.dart';

extension ConstrainedBoxExtension on Widget {
  ConstrainedBox constrainedBox({
    required BoxConstraints constraints,
  }) =>
      ConstrainedBox(
        constraints: constraints,
        child: this,
      );

  ConstrainedBox constrained({
    double minWidth = 0.0,
    double maxWidth = double.infinity,
    double minHeight = 0.0,
    double maxHeight = double.infinity,
  }) =>
      constrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        ),
      );

  ConstrainedBox constrainedWidth(
          {double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minWidth: min,
          maxWidth: max,
        ),
      );

  ConstrainedBox constrainedHeight(
          {double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minHeight: min,
          maxHeight: max,
        ),
      );
  ConstrainedBox minWidth(double minWidth) => constrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
        ),
      );

  ConstrainedBox maxWidth(double maxWidth) => constrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
      );

  ConstrainedBox minHeight(double minHeight) => constrainedBox(
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
      );

  ConstrainedBox maxHeight(double maxHeight) => constrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
      );
}
