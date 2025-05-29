import 'package:flutter/widgets.dart';

extension VisibleWidgetExtension on Widget {
  Widget visibleIf(bool condition) =>
      condition ? this : const SizedBox.shrink();

  Widget visibleIfNot(bool condition) => visibleIf(!condition);

  Widget visibleIfNull(Object? value) => visibleIf(value == null);

  Widget visibleIfNotNull(Object? value) => visibleIf(value != null);

  Widget boxShrink() => const SizedBox.shrink();

  Widget hide() => const SizedBox.shrink();

  Widget invisible() => const SizedBox.shrink();
}
