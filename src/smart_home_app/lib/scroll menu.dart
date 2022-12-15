import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [    Page1(),    Page2(),    Page3(),  ];

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Home'),
                  onPressed: () {
                    _selectPage(0);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('People'),
                  onPressed: () {
                    _selectPage(1);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Settings'),
                  onPressed: () {
                    _selectPage(2);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: _pages[_currentPageIndex],
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 3'),
    );
  }
}
