import 'package:flutter/widgets.dart';

/// Extension on [List<Widget>] that provides convenient methods for creating
/// [Column] widgets with various alignment configurations.
///
/// This extension simplifies the creation of Column layouts by providing
/// pre-configured methods for common alignment combinations, reducing
/// boilerplate code and improving readability.
///
/// Example:
/// ```dart
/// [
///   Text('Header'),
///   Text('Content'),
///   Text('Footer'),
/// ].columnCenterCenter()
/// ```
extension ColumnWidgetListExtension on List<Widget> {
  /// Creates a [Column] with customizable alignment and spacing options.
  ///
  /// This is the base method that provides full control over all Column
  /// properties. Other methods in this extension are convenience wrappers
  /// around this method with pre-configured alignment values.
  ///
  /// Parameters:
  /// - [mainAxisAlignment]: How children are aligned along the main (vertical) axis
  /// - [mainAxisSize]: How much space the Column should occupy on the main axis
  /// - [crossAxisAlignment]: How children are aligned along the cross (horizontal) axis
  /// - [textDirection]: The text direction to use for resolving alignment
  /// - [verticalDirection]: The order to lay children out vertically
  /// - [spacing]: The amount of space between children (Flutter 3.7+)
  /// - [textBaseline]: The baseline to use when [crossAxisAlignment] is baseline
  ///
  /// Returns a [Column] widget containing this list as children.
  ///
  /// Example:
  /// ```dart
  /// [Text('A'), Text('B')].column(
  ///   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ///   crossAxisAlignment: CrossAxisAlignment.start,
  ///   spacing: 8.0,
  /// )
  /// ```
  Column column({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center main axis alignment and baseline cross axis alignment.
  ///
  /// This method centers children vertically and aligns them to a common baseline
  /// horizontally. Useful for text elements that should share a baseline.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified
  /// for proper text alignment.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Small', style: TextStyle(fontSize: 12)),
  ///   Text('Large', style: TextStyle(fontSize: 24)),
  /// ].columnCenterBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnCenterBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center alignment on both main and cross axes.
  ///
  /// This is one of the most commonly used alignment combinations, centering
  /// all children both vertically and horizontally within the available space.
  ///
  /// Perfect for creating centered content layouts, dialog content, or
  /// any UI that needs to be perfectly centered.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Icon(Icons.check_circle, size: 64),
  ///   Text('Success!'),
  ///   ElevatedButton(onPressed: () {}, child: Text('Continue')),
  /// ].columnCenterCenter(spacing: 16)
  /// ```
  Column columnCenterCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center main axis alignment and end cross axis alignment.
  ///
  /// Centers children vertically while aligning them to the end (right in LTR,
  /// left in RTL) of the cross axis. Useful for right-aligned content that
  /// should be vertically centered.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Right aligned'),
  ///   Text('Also right aligned'),
  /// ].columnCenterEnd()
  /// ```
  Column columnCenterEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center main axis alignment and start cross axis alignment.
  ///
  /// Centers children vertically while aligning them to the start (left in LTR,
  /// right in RTL) of the cross axis. Useful for left-aligned content that
  /// should be vertically centered.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Left aligned'),
  ///   Text('Also left aligned'),
  /// ].columnCenterStart()
  /// ```
  Column columnCenterStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center main axis alignment and stretch cross axis alignment.
  ///
  /// Centers children vertically while stretching them to fill the full width
  /// of the cross axis. Each child will be as wide as the Column itself.
  ///
  /// Useful for creating full-width buttons or cards that are vertically centered.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   ElevatedButton(onPressed: () {}, child: Text('Full Width Button')),
  ///   Card(child: Padding(padding: EdgeInsets.all(16), child: Text('Full Width Card'))),
  /// ].columnCenterStretch(spacing: 12)
  /// ```
  Column columnCenterStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and baseline cross axis alignment.
  ///
  /// Aligns children to the bottom of the available space while aligning them
  /// to a common baseline horizontally. Useful for bottom-aligned text elements
  /// that should share a baseline.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified
  /// for proper text alignment.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Bottom Small', style: TextStyle(fontSize: 12)),
  ///   Text('Bottom Large', style: TextStyle(fontSize: 24)),
  /// ].columnEndBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnEndBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and center cross axis alignment.
  ///
  /// Aligns children to the bottom of the available space while centering them
  /// horizontally. Perfect for footer content or bottom-aligned centered elements.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Footer Text'),
  ///   Text('© 2024 Company'),
  /// ].columnEndCenter(spacing: 8)
  /// ```
  Column columnEndCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and end cross axis alignment.
  ///
  /// Aligns children to the bottom-right corner (bottom-left in RTL) of the
  /// available space. Useful for bottom-right aligned content like action buttons
  /// or status indicators.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
  ///   Text('Bottom Right'),
  /// ].columnEndEnd()
  /// ```
  Column columnEndEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and start cross axis alignment.
  ///
  /// Aligns children to the bottom-left corner (bottom-right in RTL) of the
  /// available space. Useful for bottom-left aligned content.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Bottom Left'),
  ///   Text('Status: Ready'),
  /// ].columnEndStart()
  /// ```
  Column columnEndStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and stretch cross axis alignment.
  ///
  /// Aligns children to the bottom of the available space while stretching them
  /// to fill the full width. Each child will be as wide as the Column itself.
  ///
  /// Perfect for bottom-aligned full-width elements like action bars or footers.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   ElevatedButton(onPressed: () {}, child: Text('Bottom Action')),
  ///   Container(height: 2, color: Colors.grey),
  /// ].columnEndStretch()
  /// ```
  Column columnEndStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and baseline cross axis alignment.
  ///
  /// Distributes children with equal space around each child (half space at the
  /// edges) while aligning them to a common baseline horizontally.
  ///
  /// The space around alignment places equal space before and after each child,
  /// with half that space at the beginning and end of the column.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('First', style: TextStyle(fontSize: 16)),
  ///   Text('Second', style: TextStyle(fontSize: 20)),
  ///   Text('Third', style: TextStyle(fontSize: 14)),
  /// ].columnSpaceAroundBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnSpaceAroundBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and center cross axis alignment.
  ///
  /// Distributes children with equal space around each child while centering
  /// them horizontally. This creates a balanced vertical layout with centered content.
  ///
  /// Perfect for evenly spaced menu items, navigation elements, or any content
  /// that needs balanced vertical distribution.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Icon(Icons.home),
  ///   Icon(Icons.search),
  ///   Icon(Icons.settings),
  /// ].columnSpaceAroundCenter()
  /// ```
  Column columnSpaceAroundCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and end cross axis alignment.
  ///
  /// Distributes children with equal space around each child while aligning
  /// them to the end (right in LTR, left in RTL) of the cross axis.
  ///
  /// Useful for right-aligned content that needs balanced vertical spacing.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Right 1'),
  ///   Text('Right 2'),
  ///   Text('Right 3'),
  /// ].columnSpaceAroundEnd()
  /// ```
  Column columnSpaceAroundEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and start cross axis alignment.
  ///
  /// Distributes children with equal space around each child while aligning
  /// them to the start (left in LTR, right in RTL) of the cross axis.
  ///
  /// Useful for left-aligned content that needs balanced vertical spacing.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Left 1'),
  ///   Text('Left 2'),
  ///   Text('Left 3'),
  /// ].columnSpaceAroundStart()
  /// ```
  Column columnSpaceAroundStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and stretch cross axis alignment.
  ///
  /// Distributes children with equal space around each child while stretching
  /// them to fill the full width of the cross axis.
  ///
  /// Perfect for full-width elements that need balanced vertical spacing,
  /// such as cards or buttons in a form layout.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   ElevatedButton(onPressed: () {}, child: Text('Button 1')),
  ///   ElevatedButton(onPressed: () {}, child: Text('Button 2')),
  ///   ElevatedButton(onPressed: () {}, child: Text('Button 3')),
  /// ].columnSpaceAroundStretch()
  /// ```
  Column columnSpaceAroundStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and baseline cross axis alignment.
  ///
  /// Places children with equal space between them (no space at the edges)
  /// while aligning them to a common baseline horizontally.
  ///
  /// The first child is placed at the start, the last child at the end,
  /// and remaining children are evenly distributed between them.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Header', style: TextStyle(fontSize: 18)),
  ///   Text('Content', style: TextStyle(fontSize: 14)),
  ///   Text('Footer', style: TextStyle(fontSize: 12)),
  /// ].columnSpaceBetweenBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnSpaceBetweenBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and center cross axis alignment.
  ///
  /// Places children with equal space between them while centering them horizontally.
  /// The first child is at the top, the last child at the bottom, with others
  /// evenly distributed between them.
  ///
  /// Perfect for layouts where you want maximum separation between elements,
  /// such as header/content/footer layouts or navigation structures.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Header'),
  ///   Text('Content'),
  ///   Text('Footer'),
  /// ].columnSpaceBetweenCenter()
  /// ```
  Column columnSpaceBetweenCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and end cross axis alignment.
  ///
  /// Places children with equal space between them while aligning them to the
  /// end (right in LTR, left in RTL) of the cross axis.
  ///
  /// Useful for right-aligned content with maximum vertical separation.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Top Right'),
  ///   Text('Middle Right'),
  ///   Text('Bottom Right'),
  /// ].columnSpaceBetweenEnd()
  /// ```
  Column columnSpaceBetweenEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and start cross axis alignment.
  ///
  /// Places children with equal space between them while aligning them to the
  /// start (left in LTR, right in RTL) of the cross axis.
  ///
  /// Useful for left-aligned content with maximum vertical separation.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Top Left'),
  ///   Text('Middle Left'),
  ///   Text('Bottom Left'),
  /// ].columnSpaceBetweenStart()
  /// ```
  Column columnSpaceBetweenStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and stretch cross axis alignment.
  ///
  /// Places children with equal space between them while stretching them to
  /// fill the full width of the cross axis.
  ///
  /// Perfect for full-width elements that need maximum vertical separation,
  /// such as app layouts with header, content, and footer sections.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   AppBar(title: Text('Header')),
  ///   Expanded(child: Center(child: Text('Content'))),
  ///   BottomNavigationBar(items: [...]),
  /// ].columnSpaceBetweenStretch()
  /// ```
  Column columnSpaceBetweenStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and baseline cross axis alignment.
  ///
  /// Distributes children with equal space between them and at the edges
  /// while aligning them to a common baseline horizontally.
  ///
  /// Unlike spaceBetween, spaceEvenly includes equal space at the beginning
  /// and end of the column as well as between children.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('First', style: TextStyle(fontSize: 16)),
  ///   Text('Second', style: TextStyle(fontSize: 20)),
  ///   Text('Third', style: TextStyle(fontSize: 14)),
  /// ].columnSpaceEvenlyBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnSpaceEvenlyBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and center cross axis alignment.
  ///
  /// Distributes children with equal space everywhere (between children and at edges)
  /// while centering them horizontally. This creates the most balanced spacing.
  ///
  /// Perfect for creating perfectly balanced layouts where all spacing should
  /// be identical, such as evenly distributed menu items or dashboard elements.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Icon(Icons.home, size: 32),
  ///   Icon(Icons.search, size: 32),
  ///   Icon(Icons.settings, size: 32),
  /// ].columnSpaceEvenlyCenter()
  /// ```
  Column columnSpaceEvenlyCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and end cross axis alignment.
  ///
  /// Distributes children with equal space everywhere while aligning them to
  /// the end (right in LTR, left in RTL) of the cross axis.
  ///
  /// Useful for right-aligned content with perfectly balanced vertical spacing.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Right 1'),
  ///   Text('Right 2'),
  ///   Text('Right 3'),
  /// ].columnSpaceEvenlyEnd()
  /// ```
  Column columnSpaceEvenlyEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and start cross axis alignment.
  ///
  /// Distributes children with equal space everywhere while aligning them to
  /// the start (left in LTR, right in RTL) of the cross axis.
  ///
  /// Useful for left-aligned content with perfectly balanced vertical spacing.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Left 1'),
  ///   Text('Left 2'),
  ///   Text('Left 3'),
  /// ].columnSpaceEvenlyStart()
  /// ```
  Column columnSpaceEvenlyStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and stretch cross axis alignment.
  ///
  /// Distributes children with equal space everywhere while stretching them to
  /// fill the full width of the cross axis.
  ///
  /// Perfect for full-width elements that need perfectly balanced vertical
  /// spacing, such as form sections or card layouts.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Card(child: Padding(padding: EdgeInsets.all(16), child: Text('Card 1'))),
  ///   Card(child: Padding(padding: EdgeInsets.all(16), child: Text('Card 2'))),
  ///   Card(child: Padding(padding: EdgeInsets.all(16), child: Text('Card 3'))),
  /// ].columnSpaceEvenlyStretch()
  /// ```
  Column columnSpaceEvenlyStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and baseline cross axis alignment.
  ///
  /// Aligns children to the top of the available space while aligning them
  /// to a common baseline horizontally. This is the default main axis alignment.
  ///
  /// Useful for top-aligned text elements that should share a baseline,
  /// such as labels or headers with different font sizes.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Small Label', style: TextStyle(fontSize: 12)),
  ///   Text('Large Header', style: TextStyle(fontSize: 24)),
  /// ].columnStartBaseline(textBaseline: TextBaseline.alphabetic)
  /// ```
  Column columnStartBaseline({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and center cross axis alignment.
  ///
  /// Aligns children to the top of the available space while centering them
  /// horizontally. This is a very common layout pattern.
  ///
  /// Perfect for top-aligned content that should be horizontally centered,
  /// such as page headers, form sections, or card content.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Page Title', style: Theme.of(context).textTheme.headlineMedium),
  ///   Text('Subtitle'),
  ///   ElevatedButton(onPressed: () {}, child: Text('Action')),
  /// ].columnStartCenter(spacing: 16)
  /// ```
  Column columnStartCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and end cross axis alignment.
  ///
  /// Aligns children to the top of the available space while aligning them
  /// to the end (right in LTR, left in RTL) of the cross axis.
  ///
  /// Useful for top-aligned, right-aligned content such as timestamps,
  /// status indicators, or action buttons.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('12:34 PM'),
  ///   Icon(Icons.notifications),
  ///   Text('3 new messages'),
  /// ].columnStartEnd()
  /// ```
  Column columnStartEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and start cross axis alignment.
  ///
  /// Aligns children to the top-left corner (top-right in RTL) of the available
  /// space. This creates the most natural reading flow for most languages.
  ///
  /// Perfect for standard content layouts, lists, or any content that should
  /// flow naturally from top-left.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Title'),
  ///   Text('Description text that can be quite long and will wrap naturally'),
  ///   TextButton(onPressed: () {}, child: Text('Read More')),
  /// ].columnStartStart(spacing: 8)
  /// ```
  Column columnStartStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and stretch cross axis alignment.
  ///
  /// Aligns children to the top of the available space while stretching them
  /// to fill the full width of the cross axis.
  ///
  /// Perfect for top-aligned full-width elements such as form fields,
  /// cards, or any content that should span the entire width.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   TextField(decoration: InputDecoration(labelText: 'Name')),
  ///   TextField(decoration: InputDecoration(labelText: 'Email')),
  ///   ElevatedButton(onPressed: () {}, child: Text('Submit')),
  /// ].columnStartStretch(spacing: 16)
  /// ```
  Column columnStartStretch({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with center main axis alignment and customizable cross axis alignment.
  ///
  /// Centers children vertically while allowing you to specify the horizontal
  /// alignment. This provides a balance between convenience and flexibility.
  ///
  /// Useful when you know you want vertical centering but need to vary the
  /// horizontal alignment based on context or user preferences.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Centered Vertically'),
  ///   Text('Custom Horizontal Alignment'),
  /// ].columnMainCenter(
  ///   crossAxisAlignment: CrossAxisAlignment.start,
  ///   spacing: 12,
  /// )
  /// ```
  Column columnMainCenter({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with end main axis alignment and customizable cross axis alignment.
  ///
  /// Aligns children to the bottom while allowing you to specify the horizontal
  /// alignment. Useful for bottom-aligned content with flexible horizontal positioning.
  ///
  /// Perfect for footer sections, bottom action bars, or any content that should
  /// be anchored to the bottom with variable horizontal alignment.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Footer Content'),
  ///   Text('Bottom Aligned'),
  /// ].columnMainEnd(
  ///   crossAxisAlignment: CrossAxisAlignment.stretch,
  ///   spacing: 8,
  /// )
  /// ```
  Column columnMainEnd({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceAround main axis alignment and customizable cross axis alignment.
  ///
  /// Distributes children with equal space around each child while allowing
  /// you to specify the horizontal alignment.
  ///
  /// Provides the balanced spacing of spaceAround with flexibility in
  /// horizontal positioning for different use cases.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Icon(Icons.star),
  ///   Icon(Icons.favorite),
  ///   Icon(Icons.share),
  /// ].columnMainSpaceAround(
  ///   crossAxisAlignment: CrossAxisAlignment.end,
  /// )
  /// ```
  Column columnMainSpaceAround({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceBetween main axis alignment and customizable cross axis alignment.
  ///
  /// Places children with equal space between them (no space at edges) while
  /// allowing you to specify the horizontal alignment.
  ///
  /// Perfect for layouts that need maximum vertical separation with flexible
  /// horizontal positioning, such as header/content/footer layouts.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Header'),
  ///   Text('Content'),
  ///   Text('Footer'),
  /// ].columnMainSpaceBetween(
  ///   crossAxisAlignment: CrossAxisAlignment.stretch,
  /// )
  /// ```
  Column columnMainSpaceBetween({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with spaceEvenly main axis alignment and customizable cross axis alignment.
  ///
  /// Distributes children with equal space everywhere (between children and at edges)
  /// while allowing you to specify the horizontal alignment.
  ///
  /// Provides the most balanced spacing with flexibility in horizontal positioning
  /// for creating perfectly distributed layouts.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Card(child: Text('Card 1')),
  ///   Card(child: Text('Card 2')),
  ///   Card(child: Text('Card 3')),
  /// ].columnMainSpaceEvenly(
  ///   crossAxisAlignment: CrossAxisAlignment.stretch,
  /// )
  /// ```
  Column columnMainSpaceEvenly({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with start main axis alignment and customizable cross axis alignment.
  ///
  /// Aligns children to the top while allowing you to specify the horizontal
  /// alignment. This is the default main axis alignment with flexible cross axis control.
  ///
  /// Perfect for top-aligned content where you need to vary the horizontal
  /// alignment based on content type or design requirements.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Title'),
  ///   Text('Subtitle'),
  ///   ElevatedButton(onPressed: () {}, child: Text('Action')),
  /// ].columnMainStart(
  ///   crossAxisAlignment: CrossAxisAlignment.start,
  ///   spacing: 12,
  /// )
  /// ```
  Column columnMainStart({
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with customizable main axis alignment and baseline cross axis alignment.
  ///
  /// Aligns children to a common baseline horizontally while allowing you to
  /// specify the vertical alignment. Useful for text-heavy layouts where baseline
  /// alignment is important but vertical positioning needs to be flexible.
  ///
  /// Note: When using baseline alignment, [textBaseline] should be specified
  /// for proper text alignment.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Label', style: TextStyle(fontSize: 14)),
  ///   Text('Value', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
  /// ].columnCrossBaseline(
  ///   mainAxisAlignment: MainAxisAlignment.center,
  ///   textBaseline: TextBaseline.alphabetic,
  /// )
  /// ```
  Column columnCrossBaseline({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with customizable main axis alignment and center cross axis alignment.
  ///
  /// Centers children horizontally while allowing you to specify the vertical
  /// alignment. This provides flexibility in vertical positioning while maintaining
  /// horizontal centering.
  ///
  /// Perfect for centered content where you need to control vertical distribution
  /// but always want horizontal centering.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Icon(Icons.info, size: 48),
  ///   Text('Information'),
  ///   Text('Additional details'),
  /// ].columnCrossCenter(
  ///   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ///   spacing: 8,
  /// )
  /// ```
  Column columnCrossCenter({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with customizable main axis alignment and end cross axis alignment.
  ///
  /// Aligns children to the end (right in LTR, left in RTL) horizontally while
  /// allowing you to specify the vertical alignment.
  ///
  /// Useful for right-aligned content where you need flexibility in vertical
  /// positioning, such as timestamps, prices, or action buttons.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('\$99.99', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  ///   Text('per month'),
  ///   ElevatedButton(onPressed: () {}, child: Text('Subscribe')),
  /// ].columnCrossEnd(
  ///   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  /// )
  /// ```
  Column columnCrossEnd({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with customizable main axis alignment and start cross axis alignment.
  ///
  /// Aligns children to the start (left in LTR, right in RTL) horizontally while
  /// allowing you to specify the vertical alignment.
  ///
  /// Perfect for left-aligned content where you need flexibility in vertical
  /// positioning, such as form labels, list items, or navigation elements.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   Text('Name:', style: TextStyle(fontWeight: FontWeight.bold)),
  ///   Text('John Doe'),
  ///   Text('Email:', style: TextStyle(fontWeight: FontWeight.bold)),
  ///   Text('john@example.com'),
  /// ].columnCrossStart(
  ///   mainAxisAlignment: MainAxisAlignment.spaceAround,
  ///   spacing: 4,
  /// )
  /// ```
  Column columnCrossStart({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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

  /// Creates a [Column] with customizable main axis alignment and stretch cross axis alignment.
  ///
  /// Stretches children to fill the full width while allowing you to specify
  /// the vertical alignment. Perfect for full-width layouts where you need
  /// flexibility in vertical positioning.
  ///
  /// Useful for forms, cards, or any content that should span the entire width
  /// but needs variable vertical distribution.
  ///
  /// Example:
  /// ```dart
  /// [
  ///   TextField(decoration: InputDecoration(labelText: 'Name')),
  ///   TextField(decoration: InputDecoration(labelText: 'Email')),
  ///   ElevatedButton(onPressed: () {}, child: Text('Submit')),
  /// ].columnCrossStretch(
  ///   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  /// )
  /// ```
  Column columnCrossStretch({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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
/// a single widget in a [Column].
///
/// This extension is useful when you have a single widget that you want to
/// place in a Column context, perhaps for consistent spacing or alignment
/// with other Column-based layouts in your app.
///
/// Example:
/// ```dart
/// Text('Single Item').column(
///   mainAxisAlignment: MainAxisAlignment.center,
///   crossAxisAlignment: CrossAxisAlignment.start,
/// )
/// ```
extension ColumnWidgetExtension on Widget {
  /// Wraps this widget in a [Column] with customizable alignment and spacing options.
  ///
  /// Creates a Column containing only this widget as a child. This is useful
  /// for maintaining consistent layout patterns or when you need to apply
  /// Column-specific properties to a single widget.
  ///
  /// Parameters:
  /// - [mainAxisAlignment]: How the child is aligned along the main (vertical) axis
  /// - [mainAxisSize]: How much space the Column should occupy on the main axis
  /// - [crossAxisAlignment]: How the child is aligned along the cross (horizontal) axis
  /// - [textDirection]: The text direction to use for resolving alignment
  /// - [verticalDirection]: The order to lay children out vertically
  /// - [spacing]: The amount of space between children (Flutter 3.7+)
  /// - [textBaseline]: The baseline to use when [crossAxisAlignment] is baseline
  ///
  /// Returns a [Column] widget containing this widget as its only child.
  ///
  /// Example:
  /// ```dart
  /// Container(
  ///   width: 100,
  ///   height: 50,
  ///   color: Colors.blue,
  /// ).column(
  ///   mainAxisAlignment: MainAxisAlignment.center,
  ///   crossAxisAlignment: CrossAxisAlignment.stretch,
  /// )
  /// ```
  Column column({
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double spacing = 0,
    TextBaseline? textBaseline,
  }) {
    return Column(
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
