import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Paramètres de l'appareil"), // TODO: Localize
            onTap: () {
              // Route to device settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Aide et assistance'), // TODO: Localize
            onTap: () {
              // Route to help page
            },
          ),
        ],
      ),
    );
  }
}
