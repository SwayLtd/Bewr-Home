import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static const String routeName = '/settings';
  
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Autres idées : Mode sombre, Volume des alarmes, Géolocalisation, Fuseau horaire, Animations, Mode avancé
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Notifications'),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: const Text('Langue'),
            trailing: DropdownButton<String>(
              value: _language,
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },           
              items: ['Français', 'English', 'Español']
                  .map((language) => DropdownMenuItem(
                        value: language,
                        child: Text(language),
                      ),)
                  .toList(),
            ),
          ),
          ListTile(
            title: const Text('Unité de température'),
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
                  child: Text('°C'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('°F'),
                ),
              ],
            ),
          ),
          // Ajoutez autant de paramètres que nécessaire ici
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Enregistrez les modifications apportées aux paramètres ici
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

bool _notificationsEnabled = true;
String _language = 'Français';
int _temperatureUnit = 0;