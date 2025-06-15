## NEXT

- Fixed all alignment methods to accept optional parameters
- Removed redundant exports from material and cupertino modules
- Improved documentation to be more comprehensive and easier to understand
- Renamed `expanded` to `expanded1` for consistency

## 1.0.2

- Improved README navigation
- Added proper documentation to all extensions

## 1.0.1

- Fixed README links
- Added `gap` extensions to the README

## 1.0.0

- Added `opacityZero`, `opacityTransparent`, and `opacityInvisible` methods to `OpacityWidgetExtension` for improved opacity control
- Renamed `detectGestures` to `gestureDetector` in `GestureDetectorWidgetExtension` for improved clarity
- Added additional parameters to `HeroWidgetExtension` for improved hero animation control
- Changed all `Widget` extensions to return the same type as the extension method
- Added `sizedWidth`, `sizedHeight`, `gapHorizontal`, `gapVertical`, `gapHeight`, and `gapWidth` extensions to `double` for fast gaps
- Added `opacity`, `sizedBox`, `decoratedBox`, `gesture`, `hero`, `constrained` and all remaining extensions to the README

## 0.0.22

- Improved documentation
- Added new column extensions for enhanced layout capabilities
- Added new row extensions for enhanced layout capabilities
- Added `row*` and `column*` axis extensions README sections
- Fixed column single widget extension not passing parameters to the underlying `Column` widget

## 0.0.21

- Added extensive new documentation for all widget extensions
- Implemented new stack extensions for enhanced widget stacking capabilities
- Improved method parameters of `expanded`, `flexible`, and `center` extensions
- Added intrinsicWidth step extensions

## 0.0.20

- Renamed `boxFit` method to `fittedBox` in `BoxFitWidgetExtensions` for improved clarity
- Refactored `TextExtensions` to use methods instead of getters for styling text attributes
- Added button extensions for both Cupertino and Material platforms
- Implemented `cupertinoButton`, `cupertinoFilledButton`, and `cupertinoTintedButton` for Cupertino widgets
- Added `elevatedButton`, `filledButton`, `outlinedButton`, and `textButton` extensions for Material widgets
- Included icon button variations for both platforms with customizable properties

## 0.0.19

- Completely revamped clip extensions with comprehensive coverage
- Added `ClipPath` widget extensions with customizable clipper and clip behavior
- Implemented `ClipRRect` extensions with flexible border radius and clipping options
- Added `ClipOval` and `ClipCircle` extensions for circular clipping
- Introduced `SquircleClipper` for modern UI design with adjustable corner radius
- Added `SuperellipseClipper` with parametric shape control and performance optimization
- Implemented caching mechanism for improved performance in complex clipping operations
- Separated material and cupertino specific code from the core exui
- Ensured exui is now purely dependent on flutter/widgets
- Refactored `BoxFit` widget extensions to use methods instead of getters for improved consistency
- Updated `DecoratedBox` widget extensions with renamed methods for clarity
- Modified `SizedBox` widget extensions to use `sized` method for better readability
- Changed `GestureDetector` imports to use `flutter/widgets.dart` for consistency
- Enhanced `AlignedWidgetExtension` with method-based alignment for better API design
- Added `opacityPercent`, `opacityHalf`, and `opacityQuarter` methods to `OpacityWidgetExtension` for flexible opacity control
- Introduced `boxShrink`, `hide`, and `invisible` methods in `VisibleWidgetExtension` for improved visibility handling

## 0.0.18

- Added `Positioned` widget extensions for Flutter widgets
- Implemented flexible positioning methods with customizable coordinates
- Added convenient position getters for top, left, right, and bottom
- Included support for width and height positioning
- Added `IntrinsicWidth` and `IntrinsicHeight` widget extensions
- Implemented intrinsic sizing methods with customizable step dimensions
- Added convenient getters for intrinsic width and height

## 0.0.17

- Added `BoxFit` widget extensions for Flutter widgets
- Implemented flexible box fitting methods with customizable alignment and clip behavior
- Added convenient fit getters for all BoxFit types (contain, cover, fill, none, scaleDown)
- Included support for width-only and height-only fitting options

## 0.0.16

- Added `Icon` widget extensions for Flutter widgets
- Implemented comprehensive icon customization methods
- Added support for size, fill, weight, grade, and optical size adjustments
- Included color, shadow, and semantic label customization
- Added `IconData` extensions for direct icon creation
- Implemented convenient methods for creating icons with common properties

## 0.0.15

- Added `Opacity` widget extensions for Flutter widgets
- Added `hide` getter for quick widget hiding

## 0.0.14

- Added `Hero` widget extensions for Flutter widgets
- Implemented simple hero animation method with customizable tag
- Added support for seamless widget transitions between routes

## 0.0.13

- Added `ConstrainedBox` widget extensions for Flutter widgets
- Implemented flexible constraint methods with customizable width and height limits
- Added convenient methods for setting minimum and maximum dimensions
- Included support for width-only and height-only constraints

## 0.0.12

- Added `String` text extensions for Flutter widgets
- Implemented `.text` and `.styledText` methods for converting strings to `Text` widgets with customizable styles

## 0.0.11

- Added `Row` widget extensions for Flutter widgets
- Implemented flexible row methods for both single widgets and widget lists
- Added `Column` widget extensions for Flutter widgets
- Implemented flexible column methods for both single widgets and widget lists

## 0.0.10

- Added `ClipRect` widget extensions for Flutter widgets
- Implemented circular clipping with customizable radius
- Added circle clipping with optional custom clipper
- Included squircle clipping with adjustable radius factor
- Added `DecoratedBox` widget extensions for Flutter widgets
- Implemented flexible decoration methods with customizable properties
- Added convenient methods for image, gradient, and shadow decorations
- Included support for borders, shapes, and circular borders

## 0.0.9

- Added `SizedBox` widget extensions for Flutter widgets
- Implemented flexible sizing methods with customizable width and height
- Added convenient methods for setting only width or only height

## 0.0.8

- Added `visible` widget extensions for Flutter widgets
- Implemented conditional visibility methods with boolean conditions
- Added convenient visibility toggles for null checks
- Included support for positive and negative condition checks
- Added shorthand methods for common visibility patterns

## 0.0.7

- Added `Padding` widget extensions for Flutter widgets
- Implemented comprehensive padding methods for all directions
- Added convenient padding getters for common spacing patterns
- Included support for symmetric and asymmetric padding
- Added individual padding methods for each direction (left, right, top, bottom)

## 0.0.6

- Added `Expanded` widget extensions for Flutter widgets
- Implemented flexible expansion methods with customizable flex factors
- Added convenient expansion getters for common flex ratios (1-8)
- Added `Flexible` widget extensions for Flutter widgets
- Implemented flexible sizing methods with customizable fit behavior
- Added convenient flex getters for common flex ratios (1-8)

## 0.0.5

- Added `Container` widget extensions for Flutter widgets
- Implemented flexible container methods with customizable properties
- Added `margin` widget extensions for Flutter widgets
- Implemented comprehensive margin methods for all directions
- Added convenient margin getters for common spacing patterns
- Included support for symmetric and asymmetric margins

## 0.0.4

- Added `ColoredBox` widget extensions for Flutter widgets
- Implemented base `inColoredBox` method with color parameter
- Added convenient color getters for all Material colors
- Included support for primary and accent color variants

## 0.0.3

- Added `Align` widget extensions for Flutter widgets
- Implemented flexible alignment methods with customizable factors
- Added convenient alignment getters for common positions
- Included support for center, top, bottom, left, and right alignments

## 0.0.2

- Added `Center` widget extensions for Flutter widgets
- Implemented `center`, `centerWidth`, and `centerHeight` extension methods
- Added convenient centered getter for quick centering
- Included support for width and height factor customization

## 0.0.1

- Added `GestureDetector` widget extensions for Flutter widgets
- Implemented support for all standard Flutter gesture callbacks
- Added support for tap, double tap, long press, drag, pan, and scale gestures
- Included secondary and tertiary gesture support
- Added force press gesture support for iOS devices
- Implemented customizable behavior and device support options
