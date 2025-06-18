import 'package:exui/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

List<BottomNavigationBarItem> extensionTestItems() =>
    const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
    ];

void main() {
  late List<BottomNavigationBarItem> items;

  setUp(() {
    items = extensionTestItems();
  });

  testWidgets('creates BottomNavigationBar with default values',
      (tester) async {
    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(),
      ),
    );

    await tester.pumpWidget(widget);

    expect(find.byType(BottomNavigationBar), findsOneWidget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.items.length, 2);
    expect(bottomNavBar.currentIndex, 0);
    expect(bottomNavBar.iconSize, 24.0);
    expect(bottomNavBar.selectedFontSize, 14.0);
    expect(bottomNavBar.unselectedFontSize, 12.0);
    expect(bottomNavBar.useLegacyColorScheme, isTrue);
  });

  testWidgets('passes currentIndex and onTap correctly', (tester) async {
    int? tappedIndex;

    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(
          currentIndex: 1,
          onTap: (index) => tappedIndex = index,
        ),
      ),
    );

    await tester.pumpWidget(widget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.currentIndex, 1);

    await tester.tap(find.text('Home'));
    expect(tappedIndex, 0);

    await tester.tap(find.text('Search'));
    expect(tappedIndex, 1);
  });

  testWidgets('applies color and type configurations', (tester) async {
    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );

    await tester.pumpWidget(widget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.selectedItemColor, Colors.red);
    expect(bottomNavBar.unselectedItemColor, Colors.grey);
    expect(bottomNavBar.backgroundColor, Colors.black);
    expect(bottomNavBar.type, BottomNavigationBarType.fixed);
  });

  testWidgets('uses custom icon theme and label styles', (tester) async {
    final selectedIconTheme = IconThemeData(size: 30, color: Colors.green);
    final unselectedIconTheme = IconThemeData(size: 20, color: Colors.blue);
    final selectedLabelStyle = TextStyle(fontWeight: FontWeight.bold);
    final unselectedLabelStyle = TextStyle(fontWeight: FontWeight.normal);

    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(
          selectedIconTheme: selectedIconTheme,
          unselectedIconTheme: unselectedIconTheme,
          selectedLabelStyle: selectedLabelStyle,
          unselectedLabelStyle: unselectedLabelStyle,
        ),
      ),
    );

    await tester.pumpWidget(widget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.selectedIconTheme, selectedIconTheme);
    expect(bottomNavBar.unselectedIconTheme, unselectedIconTheme);
    expect(bottomNavBar.selectedLabelStyle, selectedLabelStyle);
    expect(bottomNavBar.unselectedLabelStyle, unselectedLabelStyle);
  });

  testWidgets('respects feedback and landscape layout', (tester) async {
    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(
          enableFeedback: false,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          useLegacyColorScheme: false,
        ),
      ),
    );

    await tester.pumpWidget(widget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.enableFeedback, false);
    expect(bottomNavBar.landscapeLayout,
        BottomNavigationBarLandscapeLayout.centered);
    expect(bottomNavBar.useLegacyColorScheme, false);
  });

  testWidgets('respects label visibility settings', (tester) async {
    final widget = MaterialApp(
      home: Scaffold(
        bottomNavigationBar: items.bottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );

    await tester.pumpWidget(widget);
    final bottomNavBar = tester.widget<BottomNavigationBar>(
      find.byType(BottomNavigationBar),
    );

    expect(bottomNavBar.showSelectedLabels, false);
    expect(bottomNavBar.showUnselectedLabels, false);
  });
}
