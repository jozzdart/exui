import 'package:flutter/widgets.dart';

extension SizedBoxExtension on Widget {
  SizedBox sized({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  SizedBox sizedWidth(double width) => sized(width: width);

  SizedBox sizedHeight(double height) => sized(height: height);
}
