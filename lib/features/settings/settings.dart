// Use shared_preferences package to store some settings

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Other ideas: Dark mode, Alarm volume, Geolocation, Time zone, Animations, Advanced mode
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Notifications'), // TODO: Localize
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: const Text('Langue'), // TODO: Localize
            trailing: DropdownButton<String>(
              value: _language,
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },           
              items: ['Français', 'English', 'Español'] // TODO: Localize
                  .map((language) => DropdownMenuItem(
                        value: language,
                        child: Text(language),
                      ),)
                  .toList(),
            ),
          ),
          ListTile(
            title: const Text('Unité de température'), // TODO: Localize
            trailing: DropdownButton<int>(
              value: _temperatureUnit,
              onChanged: (value) {
                setState(() {
                  _temperatureUnit = value!;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 0,
                  child: Text('°C'), // TODO: Localize
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('°F'), // TODO: Localize
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

bool _notificationsEnabled = true; // TODO: Get from shared_preferences
String _language = 'Français'; // TODO: Get from shared_preferences
int _temperatureUnit = 0; // TODO: Get from shared_preferences
