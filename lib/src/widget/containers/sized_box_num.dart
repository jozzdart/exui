import 'package:flutter/widgets.dart';

/// Extension methods for [double] that provide convenient spacing and sizing functionality.
///
/// This extension adds methods to easily convert double values into [SizedBox] widgets
/// for creating spacing and gaps in layouts. All methods return [SizedBox] widgets
/// with the double value used as either width or height.
///
/// The extension provides semantic methods for different spacing contexts:
/// - Width/height sizing: sizedWidth, sizedHeight
/// - Gap creation: gapHorizontal, gapVertical
/// - Layout-specific gaps: gapColumn, gapRow
///
/// Example usage:
/// ```dart
/// Column(
///   children: [
///     Text('First item'),
///     16.0.gapVertical,    // 16px vertical gap
///     Text('Second item'),
///     8.0.gapColumn,       // 8px gap in column
///   ],
/// );
/// ```
extension SizedBoxDoubleExtension on double {
  /// Creates a [SizedBox] with this value as the width.
  ///
  /// Returns a [SizedBox] that has the specified width and no height constraint.
  /// Useful for creating horizontal spacing or constraining widget width.
  ///
  /// Returns a [SizedBox] with width set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Left'),
  ///     20.0.sizedWidth,  // 20px wide spacer
  ///     Text('Right'),
  ///   ],
  /// );
  /// ```
  SizedBox get sizedWidth => SizedBox(width: this);

  /// Creates a [SizedBox] with this value as the height.
  ///
  /// Returns a [SizedBox] that has the specified height and no width constraint.
  /// Useful for creating vertical spacing or constraining widget height.
  ///
  /// Returns a [SizedBox] with height set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Top'),
  ///     24.0.sizedHeight,  // 24px tall spacer
  ///     Text('Bottom'),
  ///   ],
  /// );
  /// ```
  SizedBox get sizedHeight => SizedBox(height: this);

  /// Creates a horizontal gap (spacer) with this value as the width.
  ///
  /// This is an alias for [sizedWidth] that provides semantic clarity when
  /// the intent is to create horizontal spacing between widgets.
  ///
  /// Returns a [SizedBox] with width set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Icon(Icons.star),
  ///     12.0.gapHorizontal,  // 12px horizontal gap
  ///     Text('Rating'),
  ///   ],
  /// );
  /// ```
  SizedBox get gapHorizontal => sizedWidth;

  /// Creates a vertical gap (spacer) with this value as the height.
  ///
  /// This is an alias for [sizedHeight] that provides semantic clarity when
  /// the intent is to create vertical spacing between widgets.
  ///
  /// Returns a [SizedBox] with height set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Title'),
  ///     16.0.gapVertical,  // 16px vertical gap
  ///     Text('Content'),
  ///   ],
  /// );
  /// ```
  SizedBox get gapVertical => sizedHeight;

  /// Creates a vertical gap specifically for use in columns.
  ///
  /// This is an alias for [sizedHeight] that provides semantic clarity when
  /// creating spacing between items in a [Column] widget.
  ///
  /// Returns a [SizedBox] with height set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     ListTile(title: Text('Item 1')),
  ///     8.0.gapColumn,   // 8px gap between column items
  ///     ListTile(title: Text('Item 2')),
  ///   ],
  /// );
  /// ```
  SizedBox get gapHeight => sizedHeight;

  /// Creates a horizontal gap specifically for use in rows.
  ///
  /// This is an alias for [sizedWidth] that provides semantic clarity when
  /// creating spacing between items in a [Row] widget.
  ///
  /// Returns a [SizedBox] with width set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     ElevatedButton(onPressed: () {}, child: Text('Cancel')),
  ///     16.0.gapWidth,   // 16px gap between row items
  ///     ElevatedButton(onPressed: () {}, child: Text('OK')),
  ///   ],
  /// );
  /// ```
  SizedBox get gapWidth => sizedWidth;

  /// Creates a vertical gap specifically for use in columns.
  ///
  /// This is an alias for [sizedHeight] that provides semantic clarity when
  /// creating spacing between items in a [Column] widget. Same as [gapHeight].
  ///
  /// Returns a [SizedBox] with height set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Card(child: Text('Card 1')),
  ///     12.0.gapColumn,  // 12px gap between column items
  ///     Card(child: Text('Card 2')),
  ///   ],
  /// );
  /// ```
  SizedBox get gapColumn => sizedHeight;

  /// Creates a horizontal gap specifically for use in rows.
  ///
  /// This is an alias for [sizedWidth] that provides semantic clarity when
  /// creating spacing between items in a [Row] widget. Same as [gapWidth].
  ///
  /// Returns a [SizedBox] with width set to this double value.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Chip(label: Text('Tag 1')),
  ///     8.0.gapRow,      // 8px gap between row items
  ///     Chip(label: Text('Tag 2')),
  ///   ],
  /// );
  /// ```
  SizedBox get gapRow => sizedWidth;
}

/// Extension methods for [int] that provide convenient spacing and sizing functionality.
///
/// This extension adds methods to easily convert integer values into [SizedBox] widgets
/// for creating spacing and gaps in layouts. All methods return [SizedBox] widgets
/// with the int value used as either width or height.
///
/// The extension provides semantic methods for different spacing contexts:
/// - Width/height sizing: sizedWidth, sizedHeight
/// - Gap creation: gapHorizontal, gapVertical
/// - Layout-specific gaps: gapColumn, gapRow
///
/// Example usage:
/// ```dart
/// Column(
///   children: [
///     Text('First item'),
///     16.gapVertical,    // 16px vertical gap
///     Text('Second item'),
///     8.gapColumn,       // 8px gap in column
///   ],
/// );
/// ```
extension SizedBoxIntExtension on int {
  /// Creates a [SizedBox] with this value as the width.
  ///
  /// Returns a [SizedBox] that has the specified width and no height constraint.
  ///
  /// Example:
  /// ```dart
  /// Row(
  ///   children: [
  ///     Text('Left'),
  ///     20.sizedWidth,  // 20px wide spacer
  ///     Text('Right'),
  ///   ],
  /// );
  /// ```
  SizedBox get sizedWidth => SizedBox(width: toDouble());

  /// Creates a [SizedBox] with this value as the height.
  ///
  /// Returns a [SizedBox] that has the specified height and no width constraint.
  ///
  /// Example:
  /// ```dart
  /// Column(
  ///   children: [
  ///     Text('Top'),
  ///     24.sizedHeight,  // 24px tall spacer
  ///     Text('Bottom'),
  ///   ],
  /// );
  /// ```
  SizedBox get sizedHeight => SizedBox(height: toDouble());

  /// Creates a horizontal gap (spacer) with this value as the width.
  ///
  /// Alias for [sizedWidth].
  SizedBox get gapHorizontal => sizedWidth;

  /// Creates a vertical gap (spacer) with this value as the height.
  ///
  /// Alias for [sizedHeight].
  SizedBox get gapVertical => sizedHeight;

  /// Creates a vertical gap specifically for use in columns.
  ///
  /// Alias for [sizedHeight].
  SizedBox get gapHeight => sizedHeight;

  /// Creates a horizontal gap specifically for use in rows.
  ///
  /// Alias for [sizedWidth].
  SizedBox get gapWidth => sizedWidth;

  /// Alias for [gapHeight], useful for semantic clarity in [Column] layouts.
  SizedBox get gapColumn => sizedHeight;

  /// Alias for [gapWidth], useful for semantic clarity in [Row] layouts.
  SizedBox get gapRow => sizedWidth;
}
