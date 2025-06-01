import 'package:exui/cupertino.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Page1(),
      const Page2(),
      const Page1Long(),
    ];

    return MaterialApp(
      home: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            Icons.home.icon().bottomNavigationItem('page1'),
            Icons.pages.icon().bottomNavigationItem('page2'),
            Icons.person.icon().bottomNavigationItem('page4'),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return 'This is text'
        .styledText(color: Colors.white, fontSize: 24)
        .paddingAll(16)
        .redBox()
        .center();
  }
}

class Page1Long extends StatelessWidget {
  const Page1Long({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: ColoredBox(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'This is text',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return 'Second page here'
        .styledText(color: Colors.white, fontSize: 24)
        .paddingAll(16)
        .blueBox()
        .clipSquircle()
        .center();
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return 'Third page here'
        .styledText(
          color: Colors.white,
          fontSize: 24,
        )
        .cupertinoTintedButton(
          onPressed: () {},
          sizeStyle: CupertinoButtonSize.large,
          color: CupertinoColors.black,
        )
        .center();
  }
}
