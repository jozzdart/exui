import 'package:flutter/widgets.dart';

extension VisibleWidgetExtension on Widget {
  Widget visibleIf(bool condition) =>
      condition ? this : const SizedBox.shrink();

  Widget visibleIfNot(bool condition) => visibleIf(!condition);

  Widget visibleIfNull(Object? value) => visibleIf(value == null);

  Widget visibleIfNotNull(Object? value) => visibleIf(value != null);

  SizedBox boxShrink() => const SizedBox.shrink();

  SizedBox hide() => const SizedBox.shrink();

  SizedBox invisible() => const SizedBox.shrink();
}
