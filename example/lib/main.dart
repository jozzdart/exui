import 'package:exui/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    'This is text'
        .styledText(color: Colors.white, fontSize: 24)
        .paddingAll(16)
        .redBox()
        .clipSquircle()
        .center(),
    'Second page here'
        .styledText(color: Colors.white, fontSize: 24)
        .paddingAll(16)
        .blueBox()
        .clipSquircle()
        .center(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            Icons.home.icon().bottomNavigationItem('home'),
            Icons.pages.icon().bottomNavigationItem('page2'),
          ],
        ),
      ),
    );
  }
}
