/// A modern, zero-dependency Flutter extension library for building expressive UIs faster.
///
/// `exui` streamlines your Flutter development with over 200 chainable widget extensions
/// for layout, styling, and gestures. No boilerplate, no custom widget wrappers—just
/// clean, composable Flutter code.
///
/// ```dart
/// Text("Click me")
///   .paddingAll(12)
///   .backgroundColor(Colors.teal)
///   .rounded()
///   .onTap(() => print("Tapped!"));
/// ```
///
/// ### Why use `exui`?
/// - 🚀 200+ extensions — 20× more than `styled_widget`
/// - ⚡ Lightweight — wraps existing widgets with zero overhead
/// - 🔒 Zero dependencies — pure Dart, safe for any project
/// - ✨ Actively maintained — production-ready and continuously evolving
/// - 📚 Exceptional documentation — every extension is documented with examples
///
/// Whether you're prototyping or building polished production apps,
/// `exui` makes your Flutter code faster, cleaner, and more expressive.
///
/// {@tool snippet}
/// Example usage:
///
/// ```dart
/// Icon(Icons.favorite)
///   .paddingAll(8)
///   .backgroundColor(Colors.redAccent)
///   .rounded()
///   .onTap(() => print('Liked'));
/// ```
/// {@end-tool}
library exui;

export 'src/exui.dart';
