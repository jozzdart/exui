import 'package:flutter/widgets.dart';

extension SizedBoxExtension on Widget {
  Widget inSizedBox({
    double? width,
    double? height,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: this,
      );

  Widget inSizedBoxWidth(double width) => inSizedBox(width: width);

  Widget inSizedBoxHeight(double height) => inSizedBox(height: height);
}
