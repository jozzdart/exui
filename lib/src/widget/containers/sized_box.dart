import 'package:flutter/widgets.dart';

extension SizedBoxExtension on Widget {
  Widget sized({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  Widget sizedWidth(double width) => sized(width: width);

  Widget sizedHeight(double height) => sized(height: height);
}

extension SizedBoxDoubleExtension on double {
  SizedBox get sizedWidth => SizedBox(width: this);

  SizedBox get sizedHeight => SizedBox(height: this);

  SizedBox get gapHorizontal => sizedWidth;

  SizedBox get gapVertical => sizedHeight;
}
