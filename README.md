![exui logo](https://i.imgur.com/aNY62o9.png)

<h3 align="center"><i>Everything your widgets wish they had.</i></h3>

<p align="center">
  <img src="https://img.shields.io/codefactor/grade/github/jozzdart/exui/main?style=flat-square">
  <img src="https://img.shields.io/github/license/jozzdart/exui?style=flat-square">
  <img src="https://img.shields.io/pub/points/exui?style=flat-square">
  <img src="https://img.shields.io/pub/v/exui?style=flat-square">
</p>

<p align="center">
  <a href="https://buymeacoffee.com/yosefd99v" target="https://buymeacoffee.com/yosefd99v">
    <img src="https://img.shields.io/badge/Buy%20me%20a%20coffee-Support (:-blue?logo=buymeacoffee&style=flat-square" />
  </a>
</p>

> **Accelerate your Flutter UI development, without compromising clarity.**  
> `exui` helps you build clean, maintainable UIs faster, with no wrappers and zero boilerplate.

**`exui`** is a lightweight, zero-dependency extension library for Flutter that enhances your UI code with expressive, chainable utilities. It streamlines common layout and styling patterns using pure Dart and Flutter, no reliance on Material, Cupertino, or third-party frameworks.

Designed to work seamlessly in any project, `exui` makes your widget code more concise, readable, and efficient, all while keeping full control over your widget tree.

### ✅ Features

- **Extensions - for most used Flutter widgets. Same names, same behavior.**
- **Lightweight and efficient** - wraps existing widgets without creating new classes.
- **Actively maintained** - Production-ready and continuously evolving.
- **Zero dependencies** - Pure Dart. No bloat. Add it to any project safely.
- **Battle-tested** - backed by **hundreds of unit tests** to ensure safety and reliability.
- **Exceptional documentation** - every extension is well documented with clear examples and fast navigation.

---

### ✨ All `exui` Extensions:

Each section below links to detailed documentation for a specific extension group. (Emojis only added to distinguish easily between extensions)

#### Layout Manipulation

[📏 `padding` - Quickly Add Padding](#-padding--add-padding-to-any-widget)  
[🎯 `center` - Center Widgets](#-center--center-your-widget-with-optional-factors)  
[↔️ `expanded` - Fill Available Space](#️-expanded---make-widgets-fill-available-space)  
[🧬 `flex` - fast Flexibles](#-flex--flexible-layouts-with-fine-tuned-control)  
[📐 `align` - Position Widgets](#-align--position-a-widget-precisely)  
[📍 `positioned` - Position Inside a Stack](#-positioned--position-widgets-inside-a-stack)  
[🔳 `intrinsic` - Size Widgets](#-intrinsic--size-widgets-to-their-natural-dimensions)  
[➖ `margin` - Add Outer Spacing](#-margin--add-outer-spacing-around-widgets)

#### Layout Creation

[↕️ `gap` - Performant gaps](#️-gap---add-spacing-using-number-extensions)  
[🧱 `row` / `column` - Rapid Layouts](#-row--column--instantly-wrap-widgets-in-flex-layouts)  
[🧭 `row*` / `column*` - Rapid Aligned Layouts](#-row--column--rapid-alignment-extensions-for-flex-layouts)  
[🧊 `stack` - Overlay Widgets](#-stack--overlay-widgets-with-full-stack-control)

#### Visibility, Transitions & Interactions

[👁️ `visible` - Conditional Visibility](#️-visible---conditional-visibility-for-widgets)  
[🌫️ `opacity` - Widget Transparency](#️-opacity---control-widget-transparency)  
[📱 `safeArea` - SafeArea Padding](#-safearea--add-safearea-padding-declaratively)  
[👆 `gesture` - Detect Gestures](#-gesture--add-tap-drag--press-events-easily)  
[🦸 `hero` - Shared Element Transitions](#-hero--add-seamless-shared-element-transitions)

#### Containers & Effects

[📦 `sizedBox` - Put in a SizedBox](#-sizedbox--wrap-widgets-in-fixed-size-boxes)  
[🚧 `constrained` - Limit Widget Sizes](#-constrained--add-size-limits-to-widgets)  
[🟥 `coloredBox` - Wrap in a Colored Box](#-coloredbox--add-background-color-to-any-widget)  
[🎨 `decoratedBox` - Borders, Gradients & Effects](#-decoratedbox--add-backgrounds-borders-gradients--effects)  
[✂️ `clip` - Clip Widgets into Shapes](#️-clip---clip-widgets-into-shapes)  
[🪞 `fittedBox` - Fit Widgets](#-fit--control-how-widgets-scale-to-fit)

#### Widget Creation

[📝 `text` - String to Widget](#-text--turn-any-string-into-a-text-widget)  
[🎛️ `styled text` - Style Text](#️-styled-text---modify-and-style-text-widgets-easily)  
[🔣 `icon` - Create and Style Icons](#-icon--quickly-create-and-style-icons)

> `exui` is built on **pure Flutter** (`flutter/widgets.dart`) and avoids bundling unnecessary Material or Cupertino designs by default. For convenience, optional libraries are provided for those who want seamless integration with Flutter’s built-in design systems.

#### `exui` Libraries

| Library                                     | Description                                                     |
| ------------------------------------------- | --------------------------------------------------------------- |
| [`exui/exui.dart`](lib/exui.dart)           | Core extensions for pure Flutter. Lightweight and universal.    |
| [`exui/material.dart`](lib/material.dart)   | Adds extensions tailored to Material widgets and components.    |
| [`exui/cupertino.dart`](lib/cupertino.dart) | Adds extensions for Cupertino widgets and iOS-style components. |

#### Cupertino Extensions (Apple)

- 🍎 [`cupertinoButton` - buttons](#-cupertinobutton--turn-any-widget-into-an-ios-button)
- 🎨 [`coloredBox` - background color](#-cupertino-coloredbox--apply-ios-themed-background-colors)

#### Material Extensions (Google)

- 🖲️ [`button` - buttons](#️-button---instantly-turn-any-widget-into-a-button)
- 🎨 [`coloredBox` - background color](#-material-coloredbox--background-color-with-one-line)

---

### `exui` Vision

**`exui`** is a practical toolkit for Flutter UI development — focused on saving time, reducing boilerplate, and writing layout code that’s readable, consistent, and fun.

This isn’t about replacing widgets — it’s about using **concise, chainable extensions** to help you build better UIs faster. You stay in full control of your widget tree and design system.

Whether you're working on layout, spacing, visibility, or sizing, `exui` gives you expressive helpers for the most common tasks — with zero dependencies and seamless integration into any codebase.

### Here are just a few examples:

---

#### 📏 Padding

**With `exui`:**

```dart
Text("Hello").paddingAll(16)
```

**Without:**

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Text("Hello"),
)
```

With additional extensions for quickly adding specific padding: `paddingHorizontal`, `paddingVertical`, `paddingOnly`, `paddingSymmetric`, `paddingLeft`, `paddingRight`, `paddingTop`, `paddingBottom`

---

#### ↔️ Expanded

**With `exui`:**

```dart
Text("Stretch me").expanded3
```

**Without:**

```dart
Expanded(
  flex: 3,
  child: Text("Stretch me"),
)
```

With additional extensions for quickly adding specific flex values: `expanded2`, `expanded3`, `expanded4`, `expanded5`, `expanded6`, `expanded7`, `expanded8` or `expandedFlex(int)`

---

#### 🎯 Center

**With `exui`:**

```dart
Icon(Icons.star).center()
```

**Without:**

```dart
Center(
  child: Icon(Icons.star),
)
```

With additional extensions for quickly adding specific center factors: `centerWidth(double)`, `centerHeight(double)` or with parameters `center({widthFactor, heightFactor})`

---

#### ↕️ Gaps

**With `exui`:**

```dart
Column(
  children: [
    Text("A"),
    16.gapColumn,
    Text("B"),
  ],
)
```

**Without:**

```dart
Column(
  children: [
    Text("A"),
    SizedBox(height: 16),
    Text("B"),
  ],
)
```

With additional extensions for quickly adding specific gap values: `gapRow`, `gapColumn`, `gapVertical`, `gapHorizontal` etc.

---

#### 👁️ Visibility

**With `exui`:**

```dart
Text("Visible?").visibleIf(showText)
```

**Without:**

```dart
showText ? Text("Visible?") : const SizedBox.shrink()
```

With additional extensions for quickly adding specific visibility conditions: `hide()` `visibleIfNot(bool)` or `visibleIfNull(bool)` and more.

---

#### 🚧 Constraints

**With `exui`:**

```dart
Image.asset("logo.png").maxWidth(200)
```

**Without:**

```dart
ConstrainedBox(
  constraints: BoxConstraints(maxWidth: 200),
  child: Image.asset("logo.png"),
)
```

With additional extensions for quickly adding specific constraints: `constrainedWidth`, `constrainedHeight`, `minWidth`, `maxWidth`, `minHeight`, `maxHeight` or with parameters `constrained({minWidth, maxWidth, minHeight, maxHeight})` or `constrainedBox(BoxConstraints)`

---

These are just a few of the 200+ utilities in `exui`. Every method is chainable, production-safe, and built with clarity in mind.

> **From layout to constraints, visibility to spacing — `exui` keeps your UI code clean, fast, and Flutter-native.**

Welcome to **`exui`**, I hope it'll save you time like it did for me (:

---

### 📏 `padding` — Add Padding to Any Widget

Apply padding effortlessly with readable, chainable methods. These extensions wrap your widget in a `Padding` widget using concise, expressive syntax.

- `padding(EdgeInsets)` — Use any `EdgeInsets` object directly.
- `paddingAll(double)` — Uniform padding on all sides.
- `paddingOnly({left, top, right, bottom})` — Custom padding per side.
- `paddingSymmetric({horizontal, vertical})` — Padding for x/y axes.
- `paddingHorizontal(double)` — Shorthand for horizontal-only padding.
- `paddingVertical(double)` — Shorthand for vertical-only padding.
- Per-side utilities:
  - `paddingLeft(double)`
  - `paddingRight(double)`
  - `paddingTop(double)`
  - `paddingBottom(double)`

All methods return a wrapped `Padding` widget and can be freely chained with other extensions.

#### 🧪 Examples

```dart
// 12px padding on all sides
MyWidget().paddingAll(12);
```

```dart
// 16px left and right, 8px top and bottom
MyWidget().paddingSymmetric(horizontal: 16, vertical: 8);
```

```dart
// 10px padding only on the left
MyWidget().paddingLeft(10);
```

```dart
// Custom per-side padding
MyWidget().paddingOnly(left: 8, top: 4, bottom: 12);
```

> 💡 **Why use this?**
> Instead of writing:
>
> ```dart
> Padding(
>   padding: EdgeInsets.symmetric(horizontal: 16),
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().paddingHorizontal(16)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🎯 `center` — Center Your Widget with Optional Factors

Effortlessly center any widget with precise control over layout behavior. These extensions wrap your widget in a `Center` and offer intuitive access to `widthFactor` and `heightFactor` when needed.

- `center({widthFactor, heightFactor})` — Fully customizable centering.
- `centerWidth(double?)` — Center with horizontal shrink-wrapping only.
- `centerHeight(double?)` — Center with vertical shrink-wrapping only.

All methods return a `Center` widget and can be seamlessly chained with other extensions.

#### 🧪 Examples

```dart
// Center without size constraints
MyWidget().center();
```

```dart
// Center and shrink-wrap width only
MyWidget().centerWidth(1);
```

```dart
// Center and shrink-wrap height only
MyWidget().centerHeight(1);
```

```dart
// Fully customized centering
MyWidget().center(widthFactor: 0.8, heightFactor: 0.5);
```

> 💡 Instead of writing:
>
> ```dart
> Center(
>   widthFactor: 1,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().centerWidth(1)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### ↔️ `expanded` - Make Widgets Fill Available Space

Add layout flexibility with zero boilerplate. These extensions wrap your widget in an `Expanded`, allowing you to quickly define how much space it should take relative to its siblings.

- `expandedFlex([int flex = 1])` — Wraps the widget in `Expanded` with an optional `flex`.
- `expanded1` — Shorthand for `Expanded(flex: 1)`.

* Predefined shorthand getters for fixed flex values:  
  `expanded2`, `expanded3`, `expanded4`, `expanded5`, `expanded6`, `expanded7`, `expanded8`

Use them in `Row`, `Column`, or `Flex` to control space distribution without nesting or repetition.

#### 🧪 Examples

```dart
// Flex: 1 (default)
MyWidget().expanded1;
```

```dart
// Flex: 2
MyWidget().expanded2;
```

```dart
// Flex: 5
MyWidget().expandedFlex(5);
```

> 💡 Instead of writing:
>
> ```dart
> Expanded(
>   flex: 3,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().expanded3
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🧬 `flex` — Flexible Layouts with Fine-Tuned Control

Wrap any widget in a `Flexible` with full control over `flex` and `fit`. These extensions reduce verbosity while giving you precise layout behavior in `Row`, `Column`, or `Flex` widgets.

- `flex({int flex, FlexFit fit})` — Custom flex and fit values (default: `flex: 1`, `fit: FlexFit.loose`)
- `flexLoose(int)` — Loose-fit shortcut
- `flexTight(int)` — Tight-fit shortcut

* Predefined `flex` shortcuts (default fit: `loose`):  
  `flex2()`, `flex3()`, `flex4()`, `flex5()`, `flex6()`, `flex7()`, `flex8()`

All methods return a `Flexible` widget and are safe to chain with other layout or styling extensions.

#### 🧪 Examples

```dart
// Default: flex 1, loose fit
MyWidget().flex();
```

```dart
// Predefined: flex 3, loose fit
MyWidget().flex3();
```

```dart
// Custom: flex 4, tight fit
MyWidget().flex(flex: 4, fit: FlexFit.tight);
```

```dart
// Loose-fit with custom flex
MyWidget().flexLoose(2);
```

```dart
// Tight-fit with custom flex
MyWidget().flexTight(6);
```

> 💡 Instead of writing:
>
> ```dart
> Flexible(
>   flex: 3,
>   fit: FlexFit.tight,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().flexTight(3)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📐 `align` — Position a Widget Precisely

Align your widget anywhere inside its parent with expressive, chainable methods. These extensions wrap your widget in an `Align` widget, giving you fine-grained control over its position.

- `align({ alignment, widthFactor, heightFactor })` — Custom alignment with optional size factors.
- `alignCenter()` — Center of parent (default).
- Top alignment:
  - `alignTopLeft()`
  - `alignTopCenter()`
  - `alignTopRight()`
- Center alignment:
  - `alignCenterLeft()`
  - `alignCenterRight()`
- Bottom alignment:
  - `alignBottomLeft()`
  - `alignBottomCenter()`
  - `alignBottomRight()`

All methods return an `Align` widget and are safe to use inside any layout context.

#### 🧪 Examples

```dart
// Center the widget (default)
MyWidget().alignCenter();
```

```dart
// Align to bottom-right
MyWidget().alignBottomRight();
```

```dart
// Top-left aligned with width factor
MyWidget().alignTopLeft(widthFactor: 2);
```

> 💡 Instead of writing:
>
> ```dart
> Align(
>   alignment: Alignment.bottomRight,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().alignBottomRight()
> ```

> 🧭 **When to use `positioned` vs `aligned`**  
> Use `.positioned()` inside a `Stack` when you need **precise pixel placement** (`top`, `left`, etc.).  
> Use `.aligned()` when you want **relative alignment** (like centering) within any parent.
>
> ⚠️ `.positioned()` only works inside a `Stack`. `.aligned()` works almost anywhere.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📍 `positioned` — Position Widgets Inside a Stack

Easily wrap widgets with `Positioned` using expressive, side-specific methods. These extensions let you declare layout constraints cleanly inside a `Stack` without cluttering your build logic.

- `positioned({left, top, right, bottom, width, height})` — Full `Positioned` wrapper with optional constraints.
- `positionedTop(double)` — Position from top.
- `positionedBottom(double)` — Position from bottom.
- `positionedLeft(double)` — Position from left.
- `positionedRight(double)` — Position from right.
- `positionedWidth(double)` — Set width directly.
- `positionedHeight(double)` — Set height directly.

All methods return a `Positioned` widget and are designed to be composed fluently.

#### 🧪 Examples

```dart
// Position 10px from top and left
MyWidget().positioned(top: 10, left: 10);
```

```dart
// Set only the width, auto-positioned
MyWidget().positionedWidth(200);
```

```dart
// Position from bottom with fixed height
MyWidget().positionedBottom(0).positionedHeight(60);
```

```dart
// Custom full placement
MyWidget().positioned(top: 12, right: 16, width: 150);
```

> 💡 Instead of writing:
>
> ```dart
> Positioned(
>   top: 12,
>   right: 16,
>   width: 150,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().positioned(top: 12, right: 16, width: 150)
> ```

> 🧭 **When to use `positioned` vs `aligned`**  
> Use `.positioned()` inside a `Stack` when you need **precise pixel placement** (`top`, `left`, etc.).  
> Use `.aligned()` when you want **relative alignment** (like centering) within any parent.
>
> ⚠️ `.positioned()` only works inside a `Stack`. `.aligned()` works almost anywhere.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🔳 `intrinsic` — Size Widgets to Their Natural Dimensions

Wrap widgets with `IntrinsicWidth` or `IntrinsicHeight` to size them based on their intrinsic (natural) dimensions. These extensions make it easy to apply intrinsic sizing with expressive, chainable syntax.

- `intrinsicHeight()` — Wraps in `IntrinsicHeight`.
- `intrinsicWidth()` — Wraps in `IntrinsicWidth` with default options.
- `intrinsicWidthWith({stepWidth, stepHeight})` — Custom step values.
- `intrinsicWidthStepWidth(double)` — Set `stepWidth` only.
- `intrinsicWidthStepHeight(double)` — Set `stepHeight` only.

All methods return intrinsic wrappers that measure content and size accordingly—ideal for fine-tuned layout control.

#### 🧪 Examples

```dart
// Wrap with IntrinsicHeight
MyWidget().intrinsicHeight();
```

```dart
// Wrap with IntrinsicWidth (default)
MyWidget().intrinsicWidth();
```

```dart
// Set stepWidth to 100
MyWidget().intrinsicWidthStepWidth(100);
```

```dart
// Set both stepWidth and stepHeight
MyWidget().intrinsicWidthWith(
  stepWidth: 80,
  stepHeight: 40,
);
```

> 💡 Instead of writing:
>
> ```dart
> IntrinsicWidth(
>   stepHeight: 40,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().intrinsicWidthStepHeight(40)
> ```

> ⚠️ Use intrinsic widgets with care — they can be expensive to layout and should only be used when needed for dynamic content sizing.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### ➖ `margin` — Add Outer Spacing Around Widgets

Add clean, configurable margins around any widget with chainable extensions. These methods wrap the widget in a `Container` with `margin`, avoiding cluttered layout nesting and improving code clarity.

- `margin(EdgeInsets)` — Use any `EdgeInsets` object directly.
- `marginAll(double)` — Equal margin on all sides.
- `marginOnly({left, top, right, bottom})` — Custom margin per side.
- `marginSymmetric({horizontal, vertical})` — Horizontal & vertical margin.
- `marginHorizontal(double)` — Shorthand for horizontal-only margin.
- `marginVertical(double)` — Shorthand for vertical-only margin.
- One-sided margin helpers:
  - `marginLeft(double)`
  - `marginRight(double)`
  - `marginTop(double)`
  - `marginBottom(double)`

All methods return a wrapped `Container` and can be freely chained with other extensions.

#### 🧪 Examples

```dart
// 16px margin on all sides
"Card".text().marginAll(16);
```

```dart
// 24px horizontal, 12px vertical
"Tile".text().marginSymmetric(horizontal: 24, vertical: 12);
```

```dart
// 8px margin only on top
"Header".text().marginTop(8);
```

```dart
// Custom side-by-side margin
"Box".text().marginOnly(left: 6, bottom: 10);
```

> 💡 **Why use this?**
> Instead of writing:
>
> ```dart
> Container(
>   margin: EdgeInsets.only(left: 8, top: 4),
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().marginOnly(left: 8, top: 4)
> ```

> ⚖️ **Margin vs Padding**  
> Use **`padding`** to add spacing _inside_ a widget's boundary — like space around text in a button.  
> Use **`margin`** to add spacing _outside_ a widget — like separating it from other widgets.
>
> 🟢 For most layout needs, **`padding` is the preferred and safer default**. Use `margin` when you need to push the widget away from surrounding elements, but be cautious with nesting to avoid layout issues.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### ↕️ `gap` - Add Spacing Using Number Extensions

Use doubles or ints to create `SizedBox` widgets with clear, expressive syntax. These extensions turn raw numbers into layout spacing—perfect for columns, rows, and consistent vertical/horizontal gaps.

- `sizedWidth` — `SizedBox(width: this)`
- `sizedHeight` — `SizedBox(height: this)`
- `gapHorizontal` / `gapRow` / `gapWidth` — Aliases for horizontal spacing
- `gapVertical` / `gapColumn` / `gapHeight` — Aliases for vertical spacing

All extensions return a `SizedBox` and are ideal for use in layouts to avoid magic numbers and improve readability.

#### 🧪 Examples

```dart
// Horizontal space of 16
16.gapHorizontal,
```

```dart
// Vertical space of 8
8.gapVertical,
```

```dart
// SizedBox with explicit width
2.5.sizedWidth,
```

```dart
// SizedBox with explicit height
32.sizedHeight,
```

```dart
// Clean Row layout
Row(
  children: [
    WidgetOne(),
    12.gapRow,
    WidgetTwo(),
  ],
)
```

```dart
// Clean Column layout
Column(
  children: [
    WidgetOne(),
    16.gapColumn,
    WidgetTwo(),
  ],
)
```

> 💡 Use `.gapRow` and `.gapColumn` when working inside `Row` or `Column` widgets for clarity and intent-based naming.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🧱 `row` / `column` — Instantly Wrap Widgets in Flex Layouts

Effortlessly create `Row` and `Column` layouts with readable, inline extensions. Whether you're working with a single widget or a whole list, these helpers make layout structure fast, chainable, and more expressive.

- `[].row()` / `[].column()` — Wrap a **list** of widgets in a `Row` or `Column`.
- `.row()` / `.column()` — Wrap a **single** widget in a `Row` or `Column`.

> ✅ Fully supports **all `Row` and `Column` parameters**, including:  
>  `spacing`, `mainAxisAlignment`, `crossAxisAlignment`, and more.

#### 🧪 Examples

```dart
// Two widgets in a Row with spacing
[
  WidgetOne(),
  WidgetTwo(),
].row(spacing: 12);
```

```dart
// Vertical layout with alignment and spacing
[
  WidgetOne(),
  WidgetTwo(),
].column(
  mainAxisAlignment: MainAxisAlignment.center,
  spacing: 8,
);
```

```dart
// Single widget inside a Row
MyWidget().row();
```

```dart
// Puts a single widget in a column with center alignment
MyWidget().column(
  mainAxisAlignment: MainAxisAlignment.center,
);
```

> 💡 Instead of writing:
>
> ```dart
> Column(
>   spacing: 8,
>   children: [
>     WidgetOne(),
>     WidgetTwo(),
>   ],
> )
> ```
>
> Just write:
>
> ```dart
> [
>    WidgetOne(),
>    WidgetTwo(),
> ].column(spacing: 8)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🧭 `row*` / `column*` — Rapid Alignment Extensions for Flex Layouts

Stop repeating alignment boilerplate in your `Row` and `Column` widgets. These expressive extensions let you instantly apply common combinations of `mainAxisAlignment` and `crossAxisAlignment`, all while preserving full layout control. They make **UI creation dramatically faster and more readable**, especially in complex layouts or dynamic widget lists.

#### 🧩 Functional Groups

All extensions are available for both `Row` and `Column`, following the same structure:

- ✅ `columnMain*` — Sets `mainAxisAlignment`, customize others
- ✅ `columnCross*` — Sets `crossAxisAlignment`, customize others
- ✅ `column<Main><Cross>()` — Aligns both axes (e.g., `columnCenterStart`)

* ✅ `rowMain*` — Sets `mainAxisAlignment`, customize others
* ✅ `rowCross*` — Sets `crossAxisAlignment`, customize others
* ✅ `row<Main><Cross>()` — Aligns both axes (e.g., `rowCenterStart`)

All methods accept **all standard layout parameters**, including:

- `mainAxisSize`
- `textDirection`
- `verticalDirection`
- `textBaseline`
- `spacing`

#### ✅ Why Use These?

> 💡 Instead of writing:
>
> ```dart
> Column(
>   mainAxisAlignment: MainAxisAlignment.center,
>   crossAxisAlignment: CrossAxisAlignment.start,
>   children: [...],
> )
> ```
>
> Just write:
>
> ```dart
> [...].columnCenterStart()
> ```

> Or instead of:
>
> ```dart
> Row(
>   spacing: 12,
>   mainAxisAlignment: MainAxisAlignment.spaceBetween,
>   crossAxisAlignment: CrossAxisAlignment.end,
>   children: [...],
> )
> ```
>
> Just write:
>
> ```dart
> [...].rowSpaceBetweenEnd(spacing: 12)
> ```

These shortcuts reduce boilerplate and keep your layout code highly consistent and declarative—perfect for design systems, builder UIs, and everyday Flutter apps.

#### 📚 Available `column` Methods

##### `columnMain`\<choose alignment>`()`

- `columnMainStart()` — `MainAxisAlignment.start`
- `columnMainCenter()` — `MainAxisAlignment.center`
- `columnMainEnd()` — `MainAxisAlignment.end`
- `columnMainSpaceAround()` — `MainAxisAlignment.spaceAround`
- `columnMainSpaceBetween()` — `MainAxisAlignment.spaceBetween`
- `columnMainSpaceEvenly()` — `MainAxisAlignment.spaceEvenly`

##### `columnCross`\<choose alignment>`()`

- `columnCrossStart()` — `CrossAxisAlignment.start`
- `columnCrossCenter()` — `CrossAxisAlignment.center`
- `columnCrossEnd()` — `CrossAxisAlignment.end`
- `columnCrossBaseline()` — `CrossAxisAlignment.baseline`
- `columnCrossStretch()` — `CrossAxisAlignment.stretch`

##### `column`\<choose main alignment>\<choose cross alignment>`()`

- `columnStartStart()`
- `columnStartCenter()`
- `columnStartEnd()`
- `columnStartBaseline()`
- `columnStartStretch()`

* `columnCenterStart()`
* `columnCenterCenter()`
* `columnCenterEnd()`
* `columnCenterBaseline()`
* `columnCenterStretch()`

- `columnEndStart()`
- `columnEndCenter()`
- `columnEndEnd()`
- `columnEndBaseline()`
- `columnEndStretch()`

* `columnSpaceAroundStart()`
* `columnSpaceAroundCenter()`
* `columnSpaceAroundEnd()`
* `columnSpaceAroundBaseline()`
* `columnSpaceAroundStretch()`

- `columnSpaceBetweenStart()`
- `columnSpaceBetweenCenter()`
- `columnSpaceBetweenEnd()`
- `columnSpaceBetweenBaseline()`
- `columnSpaceBetweenStretch()`

* `columnSpaceEvenlyStart()`
* `columnSpaceEvenlyCenter()`
* `columnSpaceEvenlyEnd()`
* `columnSpaceEvenlyBaseline()`
* `columnSpaceEvenlyStretch()`

#### 🧪 Examples

```dart
// A vertically-centered column, aligned to start
[
  Icons.image.icon(), // same as Icon(Icons.image)
  Text("Profile"),
].columnCenterStart();
```

```dart
// Use main alignment only, keep full control of cross
[
  Text("Hello"),
  Text("World"),
].columnMainSpaceAround(crossAxisAlignment: CrossAxisAlignment.end);
```

```dart
// Use cross alignment only, keep full control of main
[
  Text("Item 1"),
  "Item 2".text(), // same as Text("Item 2")
].columnCrossStretch(mainAxisAlignment: MainAxisAlignment.end);
```

#### 📚 Available `row` Methods

##### `rowMain`\<choose alignment>`()`

- `rowMainStart()`
- `rowMainCenter()`
- `rowMainEnd()`
- `rowMainSpaceAround()`
- `rowMainSpaceBetween()`
- `rowMainSpaceEvenly()`

##### `rowCross`\<choose alignment>`()`

- `rowCrossStart()`
- `rowCrossCenter()`
- `rowCrossEnd()`
- `rowCrossBaseline()`
- `rowCrossStretch()`

##### `row`\<choose main alignment>\<choose cross alignment>`()`

- `rowStartStart()`
- `rowStartCenter()`
- `rowStartEnd()`
- `rowStartBaseline()`
- `rowStartStretch()`

* `rowCenterStart()`
* `rowCenterCenter()`
* `rowCenterEnd()`
* `rowCenterBaseline()`
* `rowCenterStretch()`

- `rowEndStart()`
- `rowEndCenter()`
- `rowEndEnd()`
- `rowEndBaseline()`
- `rowEndStretch()`

* `rowSpaceAroundStart()`
* `rowSpaceAroundCenter()`
* `rowSpaceAroundEnd()`
* `rowSpaceAroundBaseline()`
* `rowSpaceAroundStretch()`

- `rowSpaceBetweenStart()`
- `rowSpaceBetweenCenter()`
- `rowSpaceBetweenEnd()`
- `rowSpaceBetweenBaseline()`
- `rowSpaceBetweenStretch()`

* `rowSpaceEvenlyStart()`
* `rowSpaceEvenlyCenter()`
* `rowSpaceEvenlyEnd()`
* `rowSpaceEvenlyBaseline()`
* `rowSpaceEvenlyStretch()`

#### 🧪 Examples

```dart
// Centered row, aligned to top
[
  WidgetOne(),
  WidgetTwo(),
].rowCenterStart();
```

```dart
// Horizontal space between, vertically stretched
[
  WidgetOne(),
  WidgetTwo(),
].rowSpaceBetweenStretch();
```

```dart
// Apply only main alignment, customize cross
[
  WidgetOne(),
  WidgetTwo(),
].rowMainEnd(crossAxisAlignment: CrossAxisAlignment.start);
```

```dart
// Apply only cross alignment, keep full control of main
[
  WidgetOne(),
  WidgetTwo(),
].rowCrossEnd(mainAxisAlignment: MainAxisAlignment.center);
```

> 💡 These extensions make horizontal layout code extremely fast and clean — especially when building repetitive layouts across your app.

> ✅ Full support for layout parameters like `spacing`, `mainAxisSize`, `textDirection`, and more — no flexibility lost.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🧊 `stack` — Overlay Widgets with Full Stack Control

Build layered UI structures with intuitive, chainable extensions. These methods let you create `Stack` layouts directly from a `List<Widget>` and configure fit modes easily with named variants.

- `stack()` — Wrap a list in a standard `Stack` (`StackFit.loose` by default).
- `stackLoose()` — Equivalent to `StackFit.loose` (default).
- `stackExpand()` — Children fill the available space (`StackFit.expand`).
- `stackPassthrough()` — Children keep their intrinsic size (`StackFit.passthrough`).

✅ Fully supports all native `Stack` parameters:
`alignment`, `textDirection`, `fit`, and `clipBehavior`.

#### 🧪 Examples

```dart
// Default stack with loose fit
[
  WidgetOne(),
  WidgetTwo().positionedTop(0),
].stack();
```

```dart
// Stack with expanded fit
[
  WidgetOne(),
  WidgetTwo().positionedBottom(0),
].stackExpand();
```

```dart
// Stack with passthrough sizing
[
  WidgetOne(),
  WidgetTwo(),
].stackPassthrough();
```

```dart
// Stack with custom alignment and clip behavior
[
  ...someWidgets,
].stack(
  alignment: Alignment.center,
  clipBehavior: Clip.none,
);
```

```dart
// A single widget wrapped in a Stack
MyWidget().stack();
```

> 💡 Instead of writing:
>
> ```dart
> Stack(
>   fit: StackFit.expand,
>   alignment: Alignment.center,
>   children: [ ... ],
> )
> ```
>
> Just write:
>
> ```dart
> [...].stackExpand(alignment: Alignment.center)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 👁️ `visible` - Conditional Visibility for Widgets

Simplify visibility logic in your widget tree with expressive, chainable methods. These extensions replace repetitive ternary conditions and help keep your UI code declarative and clean.

- `visibleIf(bool)` — Show this widget only if the condition is `true`; otherwise returns an empty box.
- `visibleIfNot(bool)` — Inverse of `visibleIf`.
- `visibleIfNull(Object?)` — Show this widget only if the given value is `null`.
- `visibleIfNotNull(Object?)` — Show this widget only if the given value is **not** `null`.
- `hide()` — Always returns an empty widget (`SizedBox.shrink()`).
- `invisible()` — Alias of `hide()` for readability.
- `boxShrink()` — Returns `SizedBox.shrink()` directly.

All methods return valid widgets and are safe to chain inside build methods.

#### 🧪 Examples

```dart
MyWidget().visibleIf(isLoggedIn); // Show only if condition is true
```

```dart
MyWidget().visibleIfNot(isLoggedIn); // Show only if condition is false
```

```dart
MyWidget().visibleIfNull(user); // Show only if value is null
```

```dart
MyWidget().visibleIfNotNull(user); // Show only if value is not null
```

```dart
MyWidget().hide(); // Always hidden
```

```dart
MyWidget().invisible(); // Same as hide(), for clarity
```

```dart
final emptyBox = MyWidget().boxShrink(); // Returns an empty widget directly
```

> 💡 **Why use this?**
> Instead of writing:
>
> ```dart
> condition ? MyWidget() : const SizedBox.shrink()
> ```
>
> Just write:
>
> ```dart
> MyWidget().visibleIf(condition)
> ```

> 🔒 These methods **never break layout structure** — they return a valid widget in all cases and help you write safer conditional UI.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🌫️ `opacity` - Control Widget Transparency

Quickly apply opacity to any widget using clean, expressive methods. These extensions eliminate the need to wrap widgets manually in `Opacity` and support percentage-based and common preset values.

- `opacity(double)` — Set widget transparency using a `0.0–1.0` value.
- `opacityPercent(double)` — Use percentage (`0–100`) for readability.
- `opacityHalf()` — Set opacity to 50%.
- `opacityQuarter()` — Set opacity to 25%.
- `opacityZero()` — Set opacity to 0.
- `opacityTransparent()` — Alias of `opacityZero()`.
- `opacityInvisible()` — Alias of `opacityZero()`.

All methods return a wrapped `Opacity` widget and are safe to chain with other extensions.

#### 🧪 Examples

Set to `70%` visible

```dart
MyWidget().opacity(0.7);
```

Set to `40%` using percent

```dart
MyWidget().opacityPercent(40);
```

```dart
MyWidget().opacityHalf(); // Half visible (0.5)
```

```dart
MyWidget().opacityQuarter(); // Quarter visible (0.25)
```

> 💡 Instead of writing:
>
> ```dart
> Opacity(
>   opacity: value,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().opacity(value)
> ```
>
> Use `.opacityPercent()` when working with designer specs or to make your code more intuitive at a glance.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📱 `safeArea` — Add SafeArea Padding Declaratively

Easily wrap widgets in `SafeArea` using expressive, chainable extensions. These methods let you control which sides are padded—without nesting or verbose boilerplate.

- `safeArea({left, top, right, bottom, minimum, maintainBottomViewPadding})` — Full control over all sides and padding behavior.
- `safeAreaAll()` — Padding on all sides.
- `safeAreaNone()` — No padding at all.
- `safeAreaOnlyTop()` / `safeAreaOnlyBottom()` — Top or bottom only.
- `safeAreaOnlyLeft()` / `safeAreaOnlyRight()` — Left or right only.
- `safeAreaOnlyHorizontal()` — Left + right.
- `safeAreaOnlyVertical()` — Top + bottom.

All methods return a `SafeArea` widget wrapping the original widget.

#### 🧪 Examples

```dart
MyWidget().safeArea(); // Same as wrap in SafeArea;
```

```dart
// Only top padded (e.g., below status bar)
MyWidget().safeAreaOnlyTop();
```

```dart
// Bottom safe area only (e.g., above iPhone home indicator)
MyWidget().safeAreaOnlyBottom();
```

```dart
// Custom safe area: only horizontal
MyWidget().safeAreaOnlyHorizontal();
```

```dart
// No SafeArea applied
MyWidget().safeAreaNone();
```

> 💡 Instead of writing:
>
> ```dart
> SafeArea(
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().safeArea()
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 👆 `gesture` — Add Tap, Drag & Press Events Easily

Eliminate manual `GestureDetector` nesting with intuitive, chainable gesture methods. These extensions make it effortless to attach any gesture to any widget.

- `onTap(VoidCallback)` — Handle basic tap gestures.
- `onDoubleTap(VoidCallback)` — Respond to double-tap gestures.
- `onLongPress(VoidCallback)` — Handle long presses.
- `onTapDown(...)`, `onTapUp(...)`, `onTapCancel(...)` — Full tap phase handling.
- `onSecondaryTap(...)`, `onTertiaryTapDown(...)`, etc. — Full multi-touch support.
- `onVerticalDrag...`, `onHorizontalDrag...`, `onPan...` — Add drag gestures with full phase support.
- `onScale...` — Handle pinch-to-zoom gestures.
- `onForcePress...` — Support for pressure-sensitive gestures.
- `gestureDetector(...)` — Attach multiple gestures at once in one call.

All methods return a wrapped `GestureDetector` and support optional customization of behavior, semantics, and supported devices.

#### 🧪 Examples

```dart
// Basic tap interaction
MyWidget().onTap(() => print("Tapped!"));
```

```dart
// Double tap
MyWidget().onDoubleTap(() => print("Double tapped"));
```

```dart
// Handle tap down position
MyWidget().onTapDown((details) {
  print("Tap down at ${details.globalPosition}");
});
```

```dart
// Add vertical drag support
MyWidget().onVerticalDragUpdate((details) {
  print("Dragging: ${details.delta.dy}");
});
```

```dart
// Combine multiple gestures
MyWidget().gestureDetector(
  onTap: () => print("Tap"),
  onLongPress: () => print("Long press"),
  onPanUpdate: (details) => print("Panning"),
);
```

> 💡 Instead of writing:
>
> ```dart
> GestureDetector(
>   onTap: () => doSomething(),
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().onTap(() => doSomething())
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🦸 `hero` — Add Seamless Shared Element Transitions

Effortlessly wrap any widget in a `Hero` for smooth page-to-page transitions. Customize behavior with optional parameters for animations, flight behavior, and placeholders.

- `hero(String tag)` — Wraps the widget in a `Hero` with the given tag.
- Optional parameters:
  - `createRectTween(...)` — Customize the transition animation path.
  - `flightShuttleBuilder(...)` — Override the animation widget during flight.
  - `placeholderBuilder(...)` — Placeholder shown during transition loading.
  - `transitionOnUserGestures` — Allow gesture-driven transitions.

All options mirror the native `Hero` widget and can be configured inline.

#### 🧪 Examples

```dart
// Basic shared element transition
MyWidget().hero("profile-avatar");
```

```dart
// Custom placeholder
MyWidget()
  .hero(
    "title-hero",
    placeholderBuilder: (context, size, child) =>
        SizedBox.fromSize(size: size),
  );
```

```dart
// With custom flight behavior
MyWidget().hero(
  "star-icon",
  flightShuttleBuilder: (context, animation, direction, from, to) {
    return ScaleTransition(scale: animation, child: to.widget);
  },
);
```

> 💡 Instead of writing:
>
> ```dart
> Hero(
>   tag: "avatar",
>   child: Image.asset("avatar.png"),
> )
> ```
>
> Just write:
>
> ```dart
> Image.asset("avatar.png").hero("avatar")
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📦 `sizedBox` — Wrap Widgets in Fixed-Size Boxes

Quickly wrap any widget in a `SizedBox` with a specified width, height, or both. These extensions improve readability and reduce boilerplate when sizing widgets inline.

- `sizedBox({width, height})` — Wrap with custom width and/or height.
- `sizedWidth(double)` — Set only the width.
- `sizedHeight(double)` — Set only the height.

All methods return a `SizedBox` with your widget as the child, and are safe to chain.

#### 🧪 Examples

```dart
// Fixed width and height
MyWidget().sizedBox(width: 120, height: 40);
```

```dart
// Only width
MyWidget().sizedWidth(200);
```

```dart
// Only height
MyWidget().sizedHeight(60);
```

> 💡 Instead of writing:
>
> ```dart
> SizedBox(width: 120, height: 40, child: MyWidget())
> ```
>
> Just write:
>
> ```dart
> MyWidget().sizedBox(width: 120, height: 40)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🎨 `decoratedBox` — Add Backgrounds, Borders, Gradients & Effects

Decorate any widget with rich visuals using a clean, expressive API. These extensions wrap your widget in a `DecoratedBox` with common presets like gradients, shadows, images, borders, and shapes — no boilerplate required.

- `decoratedBox(...)` — Core method using any `Decoration`.
- `decoratedBoxDecoration(...)` — Configure `BoxDecoration` inline with full control.
- `imageBox(...)` — Add a background image with all `DecorationImage` options.
- `gradientBox(Gradient)` — Add a linear, radial, or sweep gradient.
- `shadowedBox(...)` — Apply shadow effects with offset, blur, spread.
- `borderedBox(...)` — Add a border (and optional border radius).
- `shapedBox(BoxShape)` — Change the shape (e.g., circle, rectangle).
- `circularBorderBox(...)` — Draw a colored, circular border with width and radius.

All methods return a `DecoratedBox` and can be safely combined with padding, opacity, or gesture extensions.

#### 🧪 Examples

```dart
// Apply a gradient background
MyWidget().gradientBox(
  LinearGradient(colors: [Colors.purple, Colors.blue]),
);
```

```dart
// Add a background image
MyWidget().imageBox(
  image: NetworkImage("https://example.com/image.png"),
  fit: BoxFit.cover,
);
```

```dart
// Add a shadow
MyWidget().shadowedBox(
  offset: Offset(2, 2),
  blurRadius: 6,
);
```

```dart
// Circular border
MyWidget().circularBorderBox(
  radius: 12,
  color: Colors.red,
  width: 2,
);
```

```dart
// Full decorated box manually
MyWidget().decoratedBoxDecoration(
  color: Colors.grey.shade100,
  border: Border.all(color: Colors.black26),
  borderRadius: BorderRadius.circular(8),
);
```

> 💡 Instead of wrapping your widget manually like this:
>
> ```dart
> DecoratedBox(
>   decoration: BoxDecoration(
>     color: Colors.red,
>     borderRadius: BorderRadius.circular(12),
>   ),
>   child: MyWidget(),
> )
> ```
>
> You can write:
>
> ```dart
> MyWidget().decoratedBoxDecoration(
>   color: Colors.red,
>   borderRadius: BorderRadius.circular(12),
> )
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🚧 `constrained` — Add Size Limits to Widgets

Apply size constraints directly to any widget without manually wrapping in `ConstrainedBox`. These extensions make layout constraints clean, readable, and fully chainable.

- `constrained({minWidth, maxWidth, minHeight, maxHeight})` — General constraint utility.
- `constrainedBox(BoxConstraints)` — Use custom `BoxConstraints` directly.
- `constrainedWidth({min, max})` — Horizontal size limits.
- `constrainedHeight({min, max})` — Vertical size limits.
- `minWidth(double)` / `maxWidth(double)` — Individual width constraints.
- `minHeight(double)` / `maxHeight(double)` — Individual height constraints.

All methods return a `ConstrainedBox` and are safe to chain in layout compositions.

#### 🧪 Examples

```dart
// Limit to a width between 100–200
MyWidget().constrainedWidth(min: 100, max: 200);
```

```dart
// Limit to a height between 50–100
MyWidget().constrainedHeight(min: 50, max: 100);
```

```dart
// Only limit max height
MyWidget().maxHeight(120);
```

```dart
// Fully custom constraints
MyWidget().constrained(
  minWidth: 80,
  maxWidth: 150,
  minHeight: 40,
  maxHeight: 90,
);
```

```dart
// Using BoxConstraints directly
MyWidget().constrainedBox(
  constraints: BoxConstraints.tightFor(width: 100, height: 40),
);
```

> 💡 Instead of writing:
>
> ```dart
> ConstrainedBox(
>   constraints: BoxConstraints(
>     minWidth: 100,
>     maxWidth: 200,
>   ),
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().constrainedWidth(min: 100, max: 200)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🟥 `coloredBox` — Add Background Color to Any Widget

Wrap any widget with a solid background using `ColoredBox`, without nesting manually. This extension is a clean and efficient way to apply color without additional containers.

- `coloredBox(Color)` — Wraps the widget in a `ColoredBox` with the given background color.

Use this to apply color styling in layout compositions without using `Container`, keeping your UI lightweight.

#### 🧪 Example

```dart
// Red background
MyWidget().coloredBox(Colors.red);
```

> 💡 **Why use this?**
> Instead of writing:
>
> ```dart
> ColoredBox(
>   color: Colors.blue,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().coloredBox(Colors.blue)
> ```

> ✅ A minimal, performant way to color backgrounds without unnecessary overhead.

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🎨 `Material coloredBox` — Background Color with One Line

Apply colorful backgrounds to any widget using expressive `.colorBox()` helpers. These extensions wrap your widget in a `ColoredBox` with a specific `Color` from the Material palette.

No need to write `Container` or manage `BoxDecoration`—just add color directly to any widget in one line.

All extensions return a `ColoredBox`.

#### 🌈 Available Colors

- `redBox()` / `redAccentBox()`
- `greenBox()` / `greenAccentBox()`
- `blueBox()` / `blueAccentBox()`
- `yellowBox()` / `yellowAccentBox()`
- `orangeBox()` / `orangeAccentBox()`
- `purpleBox()` / `purpleAccentBox()`
- `deepPurpleBox()` / `deepPurpleAccentBox()`
- `pinkBox()` / `pinkAccentBox()`
- `brownBox()`
- `tealBox()` / `tealAccentBox()`
- `cyanBox()` / `cyanAccentBox()`
- `lightBlueBox()` / `lightBlueAccentBox()`
- `lightGreenBox()` / `lightGreenAccentBox()`
- `limeBox()` / `limeAccentBox()`
- `greyBox()`
- `blackBox()`
- `whiteBox()`

#### 🧪 Examples

```dart
// Add a red background
MyWidget().redBox();
```

```dart
// Success message with green accent
MyWidget().greenAccentBox();
```

```dart
// Stylized button background
MyWidget().blueBox().paddingAll(12);
```

> 💡 Instead of writing:
>
> ```dart
> ColoredBox(
>   color: Colors.red,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().redBox()
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🎨 `Cupertino coloredBox` — Apply iOS-Themed Background Colors

Quickly apply Cupertino-style background colors to any widget using expressive, pre-named methods. These extensions wrap your widget in a `ColoredBox` using native `CupertinoColors`.

- `redBox()` / `destructiveRedBox()`
- `greenBox()` / `activeGreenBox()`
- `blueBox()` / `activeBlueBox()`
- `orangeBox()` / `orangeAccentBox()`
- `yellowBox()` / `purpleBox()` / `pinkBox()`
- `tealBox()` / `cyanBox()` / `brownBox()`
- `greyBox()` / `blackBox()` / `whiteBox()`
- `darkGrayBox()` / `lightGrayBox()`

All methods return a `ColoredBox` using system-consistent Cupertino color values, ideal for quick prototyping and iOS-native look and feel.

#### 🧪 Examples

```dart
// Apply iOS system red background
MyWidget().redBox();
```

```dart
// Use active Cupertino blue
MyWidget().activeBlueBox();
```

```dart
// Style with light gray background
MyWidget().lightGrayBox();
```

```dart
// Warning or alert color
MyWidget().orangeAccentBox();
```

> 💡 Instead of writing:
>
> ```dart
> ColoredBox(
>   color: CupertinoColors.systemTeal,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().tealBox()
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🪞 `fit` — Control How Widgets Scale to Fit

Wrap your widget with a `FittedBox` to control how it resizes within its parent. These extensions provide clean, expressive access to `BoxFit` options — without the boilerplate.

- `fittedBox({fit, alignment, clipBehavior})` — Base method with full control.
- `fitContain()` — Preserves aspect ratio, fits within bounds.
- `fitCover()` — Fills bounds, possibly cropping.
- `fitFill()` — Stretches to fill bounds, ignoring aspect ratio.
- `fitScaleDown()` — Only scales down, never up.
- `fitHeight()` — Scales to match parent height.

All methods return a `FittedBox` and preserve your widget tree cleanly.

#### 🧪 Examples

```dart
// Scale to fit within constraints
MyWidget().fitContain();
```

```dart
// Fill the available space
MyWidget().fitCover();
```

```dart
// Scale down only if too large
MyWidget().fitScaleDown();
```

```dart
// Stretch to fill all dimensions
MyWidget().fitFill();
```

> 💡 Instead of writing:
>
> ```dart
> FittedBox(
>   fit: BoxFit.cover,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().fitCover()
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📦 `container` — Wrap Any Widget in a Container

Easily apply layout, styling, and decoration to any widget by wrapping it in a `Container`—without cluttering your code. This extension saves you from manual nesting while exposing all the powerful layout features of `Container`.

- `container({...})` — Adds padding, margin, size, decoration, alignment, and more in a single call.

Supports all `Container` options:

- `width`, `height` — Size constraints
- `color`, `decoration` — Background and border styling
- `padding`, `margin` — Inner and outer spacing
- `alignment` — Align child within the container
- `clipBehavior`, `constraints` — Additional layout control

#### 🧪 Examples

```dart
// Wrap with background color and padding
MyWidget().container(
  color: const Color(0xFFE0E0E0),
  padding: const EdgeInsets.all(12),
);
```

```dart
// Add margin and align center
MyWidget().container(
  margin: const EdgeInsets.symmetric(vertical: 16),
  alignment: Alignment.center,
);
```

```dart
// Fully customized container
MyWidget().container(
  width: 150,
  height: 80,
  decoration: BoxDecoration(
    color: const Color(0xFF2196F3),
    borderRadius: BorderRadius.circular(12),
  ),
  alignment: Alignment.center,
);
```

> 💡 Instead of writing:
>
> ```dart
> Container(
>   padding: EdgeInsets.all(12),
>   color: Colors.grey,
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().container(padding: EdgeInsets.all(12), color: Colors.grey)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### ✂️ `clip` - Clip Widgets into Shapes

Easily apply clipping to any widget using expressive, chainable methods. These extensions eliminate boilerplate when working with `ClipPath`, `ClipRRect`, `ClipOval`, and even advanced shapes like squircles.

- `clipRRect({borderRadius})` — Clip with rounded corners using `ClipRRect`.
- `clipCircular([radius])` — Clip into a circle.
- `clipOval()` — Clip into an oval or circle.
- `clipCircle()` — Alias for `clipOval()` (semantic clarity).
- `clipPath({clipper})` — General-purpose custom path clipping.
- `clipSquircle([radiusFactor])` — Clip into a modern "squircle" shape.
- `clipContinuousRectangle([radiusFactor])` — Alias for `clipSquircle()`.

All methods return wrapped `Clip*` widgets and are safe to chain.

#### 🧪 Examples

```dart
// Rounded corners (16 radius)
Container().clipRRect(borderRadius: BorderRadius.circular(16));
```

```dart
// Circular/oval clip
Image.asset("avatar.png").clipCircle();
```

```dart
// Custom path clip (e.g. star shape)
MyWidget().clipPath(clipper: StarClipper());
```

```dart
// Squircle shape (iOS-style corners)
MyWidget().clipSquircle(2.5);
```

```dart
// Same as above but with alternative naming
MyWidget().clipContinuousRectangle(2.5);
```

> 💡 Instead of writing:
>
> ```dart
> ClipRRect(
>   borderRadius: BorderRadius.circular(12),
>   child: MyWidget(),
> )
> ```
>
> Just write:
>
> ```dart
> MyWidget().clipRRect(borderRadius: BorderRadius.circular(12))
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 📝 `text` — Turn Any String into a Text Widget

Effortlessly convert a `String` into a fully configurable `Text` widget. The `.text()` and `.styledText()` extensions make your UI code clean, readable, and expressive — no more boilerplate, no more clutter.

- `.text({...})` — Create a `Text` widget with any native `Text` constructor parameters.
- `.styledText({...})` — Configure full `TextStyle` in one place: font, color, spacing, shadows, decoration, and more.

Both methods return a standard Flutter `Text` widget — no wrappers, no magic.

#### 🔹 Basic Text

```dart
"Hello world".text(); // same as Text("Hello world");
```

```dart
Text("Hello world"); // same as "Hello world".text();
```

#### 🔹 Styled Text with Alignment

```dart
"Hello exui".text(
  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
);
```

```dart
Text(
  "Hello exui",
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
  textAlign: TextAlign.center,
);
```

#### 🔹 Rich Styling in One Call

```dart
"Stylish!".styledText(
  fontSize: 24,
  fontWeight: FontWeight.w600,
  color: Colors.purple,
);
```

```dart
Text(
  "Stylish!",
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.purple,
  ),
);
```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🎛️ `styled text` - Modify and Style `Text` Widgets Easily

Powerfully enhance your `Text` widgets with dozens of chainable extensions. Control alignment, overflow, semantics, and apply fine-grained styling—without verbose `TextStyle` blocks.

These extensions are non-intrusive, composable, and maintain the immutability of the original widget.

#### 📐 Layout & Metadata Modifiers

- `textAlign(...)`
- `textDirection(...)`
- `locale(...)`
- `softWrap(...)`
- `overflow(...)`
- `maxLines(...)`
- `semanticsLabel(...)`
- `widthBasis(...)`
- `heightBehavior(...)`
- `selectionColor(...)`
- `strutStyle(...)`
- `textScaler(...)`

#### 🎨 Style Extensions

Apply full or partial `TextStyle` changes with expressive one-liners:

- `fontSize(...)`
- `fontWeight(...)`
- `fontStyle(...)`
- `letterSpacing(...)`
- `wordSpacing(...)`
- `height(...)`
- `foreground(...)` / `background(...)`
- `shadows(...)`
- `fontFeatures(...)` / `fontVariations(...)`
- `decoration(...)`
- `decorationColor(...)`
- `decorationStyle(...)`
- `decorationThickness(...)`
- `fontFamily(...)` / `fontFamilyFallback(...)`
- `leadingDistribution(...)`
- `debugLabel(...)`

#### ⚡ Expressive Shortcuts

Use simple methods for common typography tasks:

- `bold()`
- `italic()`
- `underline()`
- `strikethrough()`
- `boldItalic()`
- `boldUnderline()`
- `boldStrikethrough()`

#### 🧪 Example

```dart
"Hello World"
  .text()
  .fontSize(20)
  .boldItalic()
  .textAlign(TextAlign.center)
  .maxLines(2)
  .overflow(TextOverflow.ellipsis);
```

Or, apply full styling in one go:

```dart
"Sale!"
  .text()
  .styled(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    decoration: TextDecoration.lineThrough,
    color: Colors.red,
  );
```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🔣 `icon` — Quickly Create and Style Icons

Easily create and customize `Icon` widgets from an `IconData`, or update existing `Icon` instances with expressive, chainable methods. These extensions support all styling parameters available on Flutter's `Icon`.

#### 🧩 On `IconData`

- `icon({...})` — Create an `Icon` from `IconData` with full styling options.
- `iconSized(double)` — Shorthand for setting size.
- `iconFilled(double)` — Set the fill level (for Material symbols).
- `iconColored(Color)` — Apply color.

#### 🧩 On `Icon`

- `.sized(double)` — Change icon size.
- `.filled(double)` — Set fill level.
- `.weight(double)` / `.grade(double)` / `.opticalSize(double)` — Fine-tune variable font icons.
- `.colored(Color)` — Change icon color.
- `.shadowed(List<Shadow>)` — Add text-style shadows.
- `.semanticLabeled(String)` — Set semantic label for accessibility.
- `.textDirectioned(TextDirection)` — Set directionality.
- `.applyTextScaling(bool)` — Respect or ignore text scaling.
- `.blendMode(BlendMode)` — Control blend behavior.

All methods return a new `Icon` and preserve other properties unless overwritten.

---

#### 🧪 Examples

```dart
Icons.settings.icon(size: 32, color: Colors.amber,);
```

```dart
// Create a red icon at 24px
Icons.home.iconSized(24).colored(Colors.red);
```

```dart
// Create and fill a Material symbol icon
Icons.favorite.iconFilled(1.0);
```

```dart
// Chain multiple style changes
Icons.star.icon().sized(32).filled(0.8).colored(Colors.amber);
```

> 💡 Instead of:
>
> ```dart
> Icon(
>   Icons.star,
>   size: 32,
>   color: Colors.amber,
>   fill: 0.8,
> )
> ```
>
> Just write:
>
> ```dart
> Icons.star.icon(size: 32, color: Colors.amber, fill: 0.8)
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🍎 `cupertinoButton` — Turn Any Widget into an iOS Button

Transform any widget into a fully styled `CupertinoButton`, with fluent syntax and optional variants for filled or tinted styles. These extensions reduce boilerplate while preserving full configurability.

- `cupertinoButton(...)` — Standard iOS-style button.
- `cupertinoFilledButton(...)` — Filled style, best for emphasis.
- `cupertinoTintedButton(...)` — Tinted (outlined) style with subtle color emphasis.

Each method returns a `CupertinoButton` and supports all common options, including `pressedOpacity`, `autofocus`, `borderRadius`, and `onLongPress`.

#### 🧪 Examples

```dart
// Basic Cupertino button
Text("Continue").cupertinoButton(onPressed: () {});
```

```dart
// Filled iOS-style button
Text("Submit").cupertinoFilledButton(onPressed: () {});
```

```dart
// Tinted iOS-style button with border and color
Text("Retry").cupertinoTintedButton(
  color: CupertinoColors.systemRed,
  onPressed: () {},
);
```

> 💡 Instead of writing:
>
> ```dart
> CupertinoButton(
>   child: Text("Continue"),
>   onPressed: () {},
> )
> ```
>
> Just write:
>
> ```dart
> "Continue".text().cupertinoButton(onPressed: () {})
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

### 🖲️ `button` - Instantly Turn Any Widget into a Button

Wrap any widget in a Material Design button with a single method. These extensions let you create `ElevatedButton`, `FilledButton`, `OutlinedButton`, and `TextButton` variants with or without icons—without boilerplate.

#### ✅ Supported Types

- `elevatedButton({onPressed})`
- `elevatedIconButton({onPressed, icon})`
- `filledButton({onPressed})`
- `filledTonalButton({onPressed})`
- `filledIconButton({onPressed, icon})`
- `filledTonalIconButton({onPressed, icon})`
- `outlinedButton({onPressed})`
- `outlinedIconButton({onPressed, icon})`
- `textButton({onPressed})`
- `textIconButton({onPressed, icon})`

Each method supports full customization via Flutter's native parameters:
`style`, `focusNode`, `clipBehavior`, `onHover`, `autofocus`, `statesController`, and more.

---

#### 🧪 Examples

```dart
// Basic elevated button
Text("Submit").elevatedButton(onPressed: () => print("Tapped"))
```

```dart
// Filled button with icon
Text("Send").filledIconButton(
  onPressed: () => print("Sent"),
  icon: const Icon(Icons.send),
)
```

```dart
// Text button, semantic only
Text("Cancel").textButton(onPressed: () => print("Canceled"))
```

```dart
// Outlined button with icon and custom style
Text("Info").outlinedIconButton(
  onPressed: () {},
  icon: const Icon(Icons.info_outline),
  style: OutlinedButton.styleFrom(
    foregroundColor: Colors.blue,
  ),
)
```

---

> 💡 Instead of writing:
>
> ```dart
> ElevatedButton(
>   onPressed: () {},
>   child: Text("Confirm"),
> )
> ```
>
> Just write:
>
> ```dart
> "Confirm".text().elevatedButton(onPressed: () {})
> ```

_[⤴️ Back](#-all-exui-extensions) → All `exui` Extensions_

---

## 🔗 License MIT © Jozz

<p align="center">
  <a href="https://buymeacoffee.com/yosefd99v" target="https://buymeacoffee.com/yosefd99v">
    ☕ Enjoying this package? You can support it here.
  </a>
</p>
