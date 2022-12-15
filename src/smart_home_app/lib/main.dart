//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

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
  final List<Widget> _pages = [Home(), Devices(), Automations(), Activity(), Settings(), Feedback(), Help()];

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Pryve', style: TextStyle(color: Colors.black)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 0 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: _currentPageIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(0);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 1 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Devices',
                          style: TextStyle(
                            color: _currentPageIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(1);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 2 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Automations',
                          style: TextStyle(
                            color: _currentPageIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(2);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 3 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            color: _currentPageIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(3);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 4 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: _currentPageIndex == 4 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(4);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                selected: _currentPageIndex == 0,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 0;
                    });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.devices_other),
                title: Text('Devices'),
                selected: _currentPageIndex == 1,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 1;
                    });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.auto_awesome),
                title: Text('Automations'),
                selected: _currentPageIndex == 2,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 2;
                    });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Activity'),
                selected: _currentPageIndex == 3,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 3;
                    });
                  Navigator.of(context).pop();
                },
              ),
              Divider(color: Colors.grey),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                selected: _currentPageIndex == 4,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 4;
                    });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
                selected: _currentPageIndex == 5,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 5;
                    });
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help'),
                selected: _currentPageIndex == 6,
                onTap: () {
                  setState(() {
                      _currentPageIndex = 6;
                    });
                  Navigator.of(context).pop();
                },
              ),
            ]
          ),
        ),
      ),
      body: _pages[_currentPageIndex],
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.grey;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

Widget buildScrollMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = Colors.grey;

  return TextButton(
    style: TextButton.styleFrom(foregroundColor: color),
    child: Text(text),
    onPressed: onClicked,
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}

class Devices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Devices'),
    );
  }
}

class Automations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Automations'),
    );
  }
}

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Activity'),
    );
  }
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings'),
    );
  }
}

class Feedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Feedback'),
    );
  }
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Help'),
    );
  }
}
