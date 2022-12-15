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
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                        onTap: () {
                          _selectPage(0);
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.people),
                        title: Text('People'),
                        onTap: () {
                          _selectPage(1);
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () {
                          _selectPage(2);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
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
