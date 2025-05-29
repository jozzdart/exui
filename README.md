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

# ⚠️ WORK IN PROGRESS ⚠️

Stop wasting time on widget nesting and boilerplate. **`exui`** is a modern, zero-dependency Flutter extension library that makes your UI code faster, cleaner, and more expressive. With over **200 extensions**, it’s 20× more powerful than `styled_widget`, actively maintained, and lighter—no custom widget wrappers, just pure Flutter.

```dart
Text("Click me")
  .paddingAll(12)
  .inRedBox
  .clipCircular()
  .onTap(() => print("Tapped!"));
```

From prototyping to production, `exui` helps you build better UIs—effortlessly. Use it in every project.

---

### ✅ Features

- **200+ extensions** — for all Flutter widgets.
- **Lightweight and efficient** — wraps existing widgets without creating new classes.
- **Actively maintained** — Production-ready and continuously evolving.
- **Zero dependencies** - Pure Dart. No bloat. Add it to any project safely.
- **Exceptional documentation** — every extension is well documented with clear examples and fast navigation.
- **Gesture extensions** — `.onTap`, `.onLongPress`, `.detectGestures`, and more!
- **Layout shorthands** — `.paddingAll`, `.centered`, `.expanded`, `.sizedBox`, and more!
- **Styling utilities** — `.backgroundColor`, `.rounded`, `.border`, `.blur`, and more!

---

# Examples:

### 0% - Without `exui`

```dart
BottomNavigationBarItem(
  icon: Icon(Icons.home),
  label: 'Page 1',
),
BottomNavigationBarItem(
  icon: Icon(Icons.pages),
  label: 'Page 2',
),
```

### 25% - With a bit of `exui`

```dart
BottomNavigationBarItem(
  icon: Icons.home.icon(),
  label: 'Page 1',
),
BottomNavigationBarItem(
  icon: Icons.pages.icon(),
  label: 'Page 2',
),
```

### 50% - With a bit more of `exui`

```dart
Icons.home.icon().bottomNavigationItem('Page 1'),
Icons.pages.icon().bottomNavigationItem('Page 2'),
```

### 100% - With full `exui`

```dart
Icons.home.bottomNavigationItem('Page 1'),
Icons.pages.bottomNavigationItem('Page 2'),
```
