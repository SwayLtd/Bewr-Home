import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  static const String routeName = '/help';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Paramètres de l'appareil"),
            onTap: () {
              //Navigator.push(context, CupertinoPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Aide et assistance'),
            onTap: () {
              //Navigator.push(context, CupertinoPageRoute(builder: (context) => Feedback()));
            },
          ),
        ],
      ),
    );
  }
}