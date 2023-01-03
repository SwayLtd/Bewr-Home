// https://betterprogramming.pub/how-to-implement-a-navigation-drawer-in-flutter-8d97d3b599d4

import 'package:flutter/material.dart';
import 'package:smart_home_app/core/routes.dart';

// https://stackoverflow.com/questions/50471025/flutter-align-button-to-bottom-of-drawer
/* Widget createDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Expanded(
          // ListView contains a group of widgets that scroll inside the drawer
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.home);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.devices_other_outlined),
                title: const Text('Devices'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.devices);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.auto_awesome_outlined),
                title: const Text('Automations'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.automations);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_outlined),
                title: const Text('Activity'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.activity);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
        // This container holds the align
        Align(
            alignment: FractionalOffset.bottomCenter,
            // This container holds all the children that will be aligned
            // on the bottom and should not scroll with the above ListView
            child: Column(
              children: <Widget>[
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.settings);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback_outlined),
              title: const Text('Feedback'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.feedback);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Help'),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.help);
                Navigator.of(context).pop();
              },
            ),
              ],
            ),
        )
      ],
    ),
  );
}
*/