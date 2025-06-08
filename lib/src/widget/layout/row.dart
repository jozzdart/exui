import 'package:flutter/widgets.dart';

/// Extension on [List<Widget>] that provides convenient methods for creating
/// [Row] widgets with various alignment configurations.
///
/// This extension simplifies the creation of Row layouts by providing
/// pre-configured methods for common alignment patterns, reducing boilerplate
/// code and improving readability.
///
/// Example usage:
/// ```dart
/// [Text('Hello'), Text('World')].rowCenterCenter()
/// ```
extension RowWidgetListExtension on List<Widget> {
  /// Creates a [Row] widget with customizable alignment and spacing options.
  ///
  /// This is the base method that provides full control over all Row properties.
  /// Other methods in this extension are convenience wrappers around this method
  /// with pre-configured alignment values.
  ///
  /// Parameters:
  /// - [mainAxisAlignment]: How children are aligned along the main axis (horizontal)
  /// - [mainAxisSize]: How much space the Row should occupy along the main axis
  /// - [crossAxisAlignment]: How children are aligned along the cross axis (vertical)
  /// - [textDirection]: The text direction to use for resolving alignment
  /// - [verticalDirection]: The vertical direction to use for cross axis alignment
  /// - [spacing]: The amount of space between children (requires Flutter 3.7+)
  /// - [textBaseline]: The baseline to use when [crossAxisAlignment] is baseline
  ///
  /// Returns a [Row] widget containing this list as children.
  Row row({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start horizontally and centered vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Commonly used for left-aligned content that should be vertically centered.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.star), Text('Rating')].rowStartCenter()
  /// ```
  Row rowStartCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start horizontally and baseline-aligned vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Useful for aligning text widgets of different sizes along their baseline.
  /// Requires [textBaseline] to be specified when using baseline alignment.
  ///
  /// Example:
  /// ```dart
  /// [Text('$42', style: largeStyle), Text('points', style: smallStyle)]
  ///   .rowStartBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Row rowStartBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start horizontally and end vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Useful for left-aligned content that should be bottom-aligned within the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Label'), Icon(Icons.arrow_drop_down)].rowStartEnd()
  /// ```
  Row rowStartEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start both horizontally and vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Useful for content that should be aligned to the top-left corner of the available space.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.info), Text('Information')].rowStartStart()
  /// ```
  Row rowStartStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start horizontally and stretched vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Forces all children to expand to fill the full height of the row.
  /// Useful when you want left-aligned content that takes up the full vertical space.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.blue), Text('Stretched content')].rowStartStretch()
  /// ```
  Row rowStartStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end horizontally and baseline-aligned vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Useful for right-aligned text content that should align along their baseline.
  /// Requires [textBaseline] to be specified when using baseline alignment.
  ///
  /// Example:
  /// ```dart
  /// [Text('Total: '), Text('\$99.99', style: boldStyle)]
  ///   .rowEndBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Row rowEndBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end horizontally and centered vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Commonly used for right-aligned content that should be vertically centered.
  ///
  /// Example:
  /// ```dart
  /// [Text('Settings'), Icon(Icons.settings)].rowEndCenter()
  /// ```
  Row rowEndCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end both horizontally and vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Useful for content that should be aligned to the bottom-right corner of the available space.
  ///
  /// Example:
  /// ```dart
  /// [Text('Done'), Icon(Icons.check)].rowEndEnd()
  /// ```
  Row rowEndEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end horizontally and start vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Useful for right-aligned content that should be top-aligned within the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Close'), Icon(Icons.close)].rowEndStart()
  /// ```
  Row rowEndStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end horizontally and stretched vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Forces all children to expand to fill the full height while being right-aligned.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.red), Text('Right stretched')].rowEndStretch()
  /// ```
  Row rowEndStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and baseline vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Distributes children with equal space around each child (half space at edges).
  /// Children are aligned along their text baseline.
  ///
  /// Example:
  /// ```dart
  /// [Text('A'), Text('B'), Text('C')].rowSpaceAroundBaseline(
  ///   textBaseline: TextBaseline.alphabetic
  /// )
  /// ```
  Row rowSpaceAroundBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and centered vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Distributes children with equal space around each child (half space at edges)
  /// while keeping them vertically centered. This is commonly used for navigation
  /// bars or button groups.
  ///
  /// Example:
  /// ```dart
  /// [IconButton(icon: Icon(Icons.home)),
  ///  IconButton(icon: Icon(Icons.search)),
  ///  IconButton(icon: Icon(Icons.profile))].rowSpaceAroundCenter()
  /// ```
  Row rowSpaceAroundCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and end vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Distributes children with equal space around each child (half space at edges)
  /// while aligning them to the bottom of the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Left'), Text('Center'), Text('Right')].rowSpaceAroundEnd()
  /// ```
  Row rowSpaceAroundEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and start vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Distributes children with equal space around each child (half space at edges)
  /// while aligning them to the top of the row.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.home), Icon(Icons.search), Icon(Icons.settings)].rowSpaceAroundStart()
  /// ```
  Row rowSpaceAroundStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and stretched vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Distributes children with equal space around each child (half space at edges)
  /// while forcing them to expand to fill the full height of the row.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.red), Container(color: Colors.blue), Container(color: Colors.green)]
  ///   .rowSpaceAroundStretch()
  /// ```
  Row rowSpaceAroundStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and baseline vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Distributes children with equal space between them (no space at edges)
  /// while aligning them along their text baseline. Requires [textBaseline] to be specified.
  ///
  /// Example:
  /// ```dart
  /// [Text('Start', style: smallStyle), Text('Middle'), Text('End', style: largeStyle)]
  ///   .rowSpaceBetweenBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Row rowSpaceBetweenBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and centered vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Distributes children with equal space between them (no space at edges)
  /// while keeping them vertically centered. This is one of the most commonly
  /// used layouts for headers, toolbars, and navigation elements.
  ///
  /// Example:
  /// ```dart
  /// [Text('Title'), Spacer(), Icon(Icons.menu)].rowSpaceBetweenCenter()
  /// ```
  Row rowSpaceBetweenCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and end vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Distributes children with equal space between them (no space at edges)
  /// while aligning them to the bottom of the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Left'), Text('Center'), Text('Right')].rowSpaceBetweenEnd()
  /// ```
  Row rowSpaceBetweenEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and start vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Distributes children with equal space between them (no space at edges)
  /// while aligning them to the top of the row.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.menu), Text('Title'), Icon(Icons.search)].rowSpaceBetweenStart()
  /// ```
  Row rowSpaceBetweenStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and stretched vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Distributes children with equal space between them (no space at edges)
  /// while forcing them to expand to fill the full height of the row.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.red), Container(color: Colors.blue)]
  ///   .rowSpaceBetweenStretch()
  /// ```
  Row rowSpaceBetweenStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with baseline vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Distributes children with equal space between them and at the edges
  /// while aligning them along their text baseline. Requires [textBaseline] to be specified.
  ///
  /// Example:
  /// ```dart
  /// [Text('Small'), Text('LARGE', style: bigStyle), Text('Medium')]
  ///   .rowSpaceEvenlyBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Row rowSpaceEvenlyBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with centered vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Distributes children with equal space between them and at the edges.
  /// This creates perfectly even spacing throughout the entire row width.
  ///
  /// Example:
  /// ```dart
  /// [Text('A'), Text('B'), Text('C')].rowSpaceEvenlyCenter()
  /// ```
  Row rowSpaceEvenlyCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with end vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Distributes children with equal space between them and at the edges
  /// while aligning them to the bottom of the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Left'), Text('Center'), Text('Right')].rowSpaceEvenlyEnd()
  /// ```
  Row rowSpaceEvenlyEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with start vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Distributes children with equal space between them and at the edges
  /// while aligning them to the top of the row.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.home), Icon(Icons.search), Icon(Icons.settings)].rowSpaceEvenlyStart()
  /// ```
  Row rowSpaceEvenlyStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with stretched vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Distributes children with equal space between them and at the edges
  /// while forcing them to expand to fill the full height of the row.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.red), Container(color: Colors.blue), Container(color: Colors.green)]
  ///   .rowSpaceEvenlyStretch()
  /// ```
  Row rowSpaceEvenlyStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered horizontally and baseline-aligned vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Centers children horizontally while aligning them along their text baseline.
  /// Requires [textBaseline] to be specified when using baseline alignment.
  ///
  /// Example:
  /// ```dart
  /// [Text('Price: '), Text('\$99', style: largeStyle), Text('.99', style: smallStyle)]
  ///   .rowCenterBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Row rowCenterBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered both horizontally and vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// This is one of the most commonly used alignment combinations, perfect for
  /// centering content within a row.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.star), Text('Favorite')].rowCenterCenter()
  /// ```
  Row rowCenterCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered horizontally and aligned to the end vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Centers children horizontally while aligning them to the bottom of the row.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.star), Text('Rating'), Text('4.5')].rowCenterEnd()
  /// ```
  Row rowCenterEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered horizontally and aligned to the start vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Centers children horizontally while aligning them to the top of the row.
  ///
  /// Example:
  /// ```dart
  /// [Text('Title'), Icon(Icons.info)].rowCenterStart()
  /// ```
  Row rowCenterStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered horizontally and stretched vertically.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Centers children horizontally while forcing them to expand to fill the full height of the row.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.blue), Text('Centered & Stretched')].rowCenterStretch()
  /// ```
  Row rowCenterStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children centered horizontally and customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.center
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Provides horizontal centering while allowing you to specify the vertical alignment.
  /// This is useful when you want centered content with specific vertical positioning.
  ///
  /// Example:
  /// ```dart
  /// [Text('Title'), Icon(Icons.help)]
  ///   .rowMainCenter(crossAxisAlignment: CrossAxisAlignment.start)
  /// ```
  Row rowMainCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the end horizontally and customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.end
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Provides horizontal end alignment while allowing you to specify the vertical alignment.
  /// This is useful for right-aligned content with specific vertical positioning.
  ///
  /// Example:
  /// ```dart
  /// [Text('Total: \$99.99'), Icon(Icons.check)]
  ///   .rowMainEnd(crossAxisAlignment: CrossAxisAlignment.start)
  /// ```
  Row rowMainEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed around children and customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceAround
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Distributes children with equal space around each child (half space at edges)
  /// while allowing you to specify the vertical alignment.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.home), Icon(Icons.search), Icon(Icons.profile)]
  ///   .rowMainSpaceAround(crossAxisAlignment: CrossAxisAlignment.start)
  /// ```
  Row rowMainSpaceAround({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed between children and customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceBetween
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Distributes children with equal space between them (no space at edges).
  /// This is commonly used for layouts where you want items at opposite ends
  /// with remaining items evenly spaced between them.
  ///
  /// Example:
  /// ```dart
  /// [Text('Back'), Text('Title'), Icon(Icons.more_vert)]
  ///   .rowMainSpaceBetween()
  /// ```
  Row rowMainSpaceBetween({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with space distributed evenly around and between children with customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.spaceEvenly
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Distributes children with equal space between them and at the edges
  /// while allowing you to specify the vertical alignment.
  ///
  /// Example:
  /// ```dart
  /// [Text('A'), Text('B'), Text('C')]
  ///   .rowMainSpaceEvenly(crossAxisAlignment: CrossAxisAlignment.baseline)
  /// ```
  Row rowMainSpaceEvenly({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with children aligned to the start horizontally and customizable vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: MainAxisAlignment.start
  /// - crossAxisAlignment: [crossAxisAlignment] (defaults to center)
  ///
  /// Provides horizontal start alignment while allowing you to specify the vertical alignment.
  /// This is useful for left-aligned content with specific vertical positioning.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.info), Text('Information')]
  ///   .rowMainStart(crossAxisAlignment: CrossAxisAlignment.start)
  /// ```
  Row rowMainStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with customizable horizontal alignment and baseline vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: [mainAxisAlignment] (defaults to start)
  /// - crossAxisAlignment: CrossAxisAlignment.baseline
  ///
  /// Provides baseline vertical alignment while allowing you to specify the horizontal alignment.
  /// Requires [textBaseline] to be specified when using baseline alignment.
  ///
  /// Example:
  /// ```dart
  /// [Text('Price: '), Text('\$99', style: largeStyle), Text('.99')]
  ///   .rowCrossBaseline(
  ///     mainAxisAlignment: MainAxisAlignment.center,
  ///     textBaseline: TextBaseline.alphabetic
  ///   )
  /// ```
  Row rowCrossBaseline({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with customizable horizontal alignment and centered vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: [mainAxisAlignment] (defaults to start)
  /// - crossAxisAlignment: CrossAxisAlignment.center
  ///
  /// Provides vertical centering while allowing you to specify the horizontal alignment.
  /// This is useful when you want vertically centered content with specific horizontal positioning.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.search), TextField()]
  ///   .rowCrossCenter(mainAxisAlignment: MainAxisAlignment.spaceEvenly)
  /// ```
  Row rowCrossCenter({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with customizable horizontal alignment and end vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: [mainAxisAlignment] (defaults to start)
  /// - crossAxisAlignment: CrossAxisAlignment.end
  ///
  /// Provides end (bottom) vertical alignment while allowing you to specify the horizontal alignment.
  /// This is useful when you want bottom-aligned content with specific horizontal positioning.
  ///
  /// Example:
  /// ```dart
  /// [Text('Label'), Icon(Icons.arrow_drop_down)]
  ///   .rowCrossEnd(mainAxisAlignment: MainAxisAlignment.spaceBetween)
  /// ```
  Row rowCrossEnd({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with customizable horizontal alignment and start vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: [mainAxisAlignment] (defaults to start)
  /// - crossAxisAlignment: CrossAxisAlignment.start
  ///
  /// Provides start (top) vertical alignment while allowing you to specify the horizontal alignment.
  /// This is useful when you want top-aligned content with specific horizontal positioning.
  ///
  /// Example:
  /// ```dart
  /// [Icon(Icons.info), Text('Important information')]
  ///   .rowCrossStart(mainAxisAlignment: MainAxisAlignment.center)
  /// ```
  Row rowCrossStart({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }

  /// Creates a [Row] with customizable horizontal alignment and stretched vertical alignment.
  ///
  /// This is equivalent to setting:
  /// - mainAxisAlignment: [mainAxisAlignment] (defaults to start)
  /// - crossAxisAlignment: CrossAxisAlignment.stretch
  ///
  /// Forces all children to expand to fill the full height of the row while
  /// allowing you to specify the horizontal alignment. This is useful when you
  /// want all children to have the same height regardless of their natural size.
  ///
  /// Example:
  /// ```dart
  /// [Container(color: Colors.blue), Container(color: Colors.red)]
  ///   .rowCrossStretch(mainAxisAlignment: MainAxisAlignment.spaceEvenly)
  /// ```
  Row rowCrossStretch({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: this,
    );
  }
}

/// Extension on [Widget] that provides a convenient method for wrapping
/// a single widget in a [Row].
///
/// This extension is useful when you need to convert a single widget into
/// a Row layout, typically for consistency with other parts of your UI
/// or to prepare for adding more children later.
///
/// Example usage:
/// ```dart
/// Text('Single item').row()
/// ```
extension RowWidgetExtension on Widget {
  /// Creates a [Row] widget containing this widget as the only child.
  ///
  /// This method wraps the current widget in a Row with customizable
  /// alignment and spacing options. It's equivalent to creating a Row
  /// with a single-item list containing this widget.
  ///
  /// Parameters:
  /// - [mainAxisAlignment]: How the child is aligned along the main axis (horizontal)
  /// - [mainAxisSize]: How much space the Row should occupy along the main axis
  /// - [crossAxisAlignment]: How the child is aligned along the cross axis (vertical)
  /// - [textDirection]: The text direction to use for resolving alignment
  /// - [verticalDirection]: The vertical direction to use for cross axis alignment
  /// - [spacing]: The amount of space between children (not applicable for single child)
  /// - [textBaseline]: The baseline to use when [crossAxisAlignment] is baseline
  ///
  /// Returns a [Row] widget containing this widget as the only child.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World')
  ///   .row(mainAxisAlignment: MainAxisAlignment.center)
  /// ```
  Row row({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: [this],
    );
  }
}
