import 'package:flutter/widgets.dart';

extension SizedBoxDoubleExtension on double {
  SizedBox get sizedWidth => SizedBox(width: this);

  SizedBox get sizedHeight => SizedBox(height: this);

  SizedBox get gapHorizontal => sizedWidth;

  SizedBox get gapVertical => sizedHeight;

  SizedBox get gapHeight => sizedHeight;

  SizedBox get gapWidth => sizedWidth;

  SizedBox get gapColumn => sizedHeight;

  SizedBox get gapRow => sizedWidth;
}
