import 'package:flutter/widgets.dart';

extension SizedBoxExtension on Widget {
  SizedBox sizedBox({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  SizedBox sizedWidth(double width) => sizedBox(width: width);

  SizedBox sizedHeight(double height) => sizedBox(height: height);
}
