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

extension SizedBoxDoubleExtension on double {
  SizedBox get sizedWidth => SizedBox(width: this);

  SizedBox get sizedHeight => SizedBox(height: this);

  SizedBox get gapHorizontal => sizedWidth;

  SizedBox get gapVertical => sizedHeight;

  SizedBox get gapHeight => sizedHeight;

  SizedBox get gapWidth => sizedWidth;
}
