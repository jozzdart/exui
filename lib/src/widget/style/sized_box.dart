import 'package:flutter/widgets.dart';

extension SizedBoxExtension on Widget {
  Widget sizedBox({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  Widget sizedBoxWidth(double width) => sizedBox(width: width);

  Widget sizedBoxHeight(double height) => sizedBox(height: height);
}
