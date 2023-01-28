// Use shared_preferences package to store some settings

import 'package:bewr_home/core/l10n.dart';
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
            title: Text(context.loc.settingsNotifications),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: Text(context.loc.settingsLanguage),
            trailing: DropdownButton<String>(
              value: _language,
              onChanged: (value) {
                setState(() {
                  _language = value!;
                });
              },           
              items: [context.loc.settingsLanguageEnglish, context.loc.settingsLanguageFrench, context.loc.settingsLanguageSpanish]
                  .map((language) => DropdownMenuItem(
                        value: language,
                        child: Text(language),
                      ),)
                  .toList(),
            ),
          ),
          ListTile(
            title: Text(context.loc.settingsTemperatureUnit),
            trailing: DropdownButton<int>(
              value: _temperatureUnit,
              onChanged: (value) {
                setState(() {
                  _temperatureUnit = value!;
                });
              },
              items: [
                DropdownMenuItem(
                  value: 0,
                  child: Text(context.loc.settingsTemperatureUnitCelsius),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text(context.loc.settingsTemperatureUnitFahrenheit),
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
String _language = 'Français'; // TODO: Get from shared_preferences // TODO: Localize
int _temperatureUnit = 0; // TODO: Get from shared_preferences
