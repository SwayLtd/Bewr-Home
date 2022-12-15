import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPageIndex = 0;

  final _pageOptions = [    HomePage(),    SettingsPage(),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon application'),
      ),
      body: _pageOptions[_selectedPageIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Page d\'accueil'),
              selected: _selectedPageIndex == 0,
              onTap: () {
                setState(() {
                  _selectedPageIndex = 0;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Paramètres'),
              selected: _selectedPageIndex == 1,
              onTap: () {
                setState(() {
                  _selectedPageIndex = 1;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Page d\'accueil'),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Paramètres'),
      ),
    );
  }
}
