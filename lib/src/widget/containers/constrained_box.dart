import 'package:flutter/widgets.dart';

extension ConstrainedBoxExtension on Widget {
  Widget constrainedBox({
    required BoxConstraints constraints,
  }) =>
      ConstrainedBox(
        constraints: constraints,
        child: this,
      );

  Widget constrained({
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

  Widget constrainedWidth({double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minWidth: min,
          maxWidth: max,
        ),
      );

  Widget constrainedHeight({double min = 0, double max = double.infinity}) =>
      constrainedBox(
        constraints: BoxConstraints(
          minHeight: min,
          maxHeight: max,
        ),
      );
  Widget minWidth(double minWidth) => constrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
        ),
      );

  Widget maxWidth(double maxWidth) => constrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
      );

  Widget minHeight(double minHeight) => constrainedBox(
        constraints: BoxConstraints(
          minHeight: minHeight,
        ),
      );

  Widget maxHeight(double maxHeight) => constrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
      );
}
