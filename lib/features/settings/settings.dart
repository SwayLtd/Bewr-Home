// Use shared_preferences package to store some settings

import 'package:bewr_home/core/l10n.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

// TODO: Get from shared_preferences
String theme = "System";
bool notificationsEnabled = true;
int temperatureUnit = 0; 
String language = "Français";

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Other ideas: Dark mode, Alarm volume, Geolocation, Time zone, Animations, Advanced mode
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(context.loc.settingsAppTheme),
            trailing: DropdownButton<String>(
              value: theme,
              onChanged: (value) {
                setState(() {
                  theme = value!;
                });
                if (value == context.loc.settingsAppThemeSystem) {
                  AdaptiveTheme.of(context).setSystem();
                } else if (value == context.loc.settingsAppThemeLight) {
                  AdaptiveTheme.of(context).setLight();
                } else if (value == context.loc.settingsAppThemeDark) {
                  AdaptiveTheme.of(context).setDark();
                } else {
                  AdaptiveTheme.of(context).setSystem();
                }
              },
              items: [
                context.loc.settingsAppThemeSystem,
                context.loc.settingsAppThemeLight,
                context.loc.settingsAppThemeDark
              ]
                  .map(
                    (theme) => DropdownMenuItem(
                      value: theme,
                      child: Text(theme),
                    ),
                  )
                  .toList(),
            ),
          ),
          SwitchListTile.adaptive(
            title: Text(context.loc.settingsNotifications),
            value: notificationsEnabled,
            onChanged: (value) {
              setState(() {
                notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: Text(context.loc.settingsLanguage),
            trailing: DropdownButton<String>(
              value: language,
              onChanged: (value) {
                setState(() {
                  language = value!;
                });
              },
              items: [
                context.loc.settingsLanguageEnglish,
                context.loc.settingsLanguageFrench,
                context.loc.settingsLanguageSpanish
              ]
                  .map(
                    (language) => DropdownMenuItem(
                      value: language,
                      child: Text(language),
                    ),
                  )
                  .toList(),
            ),
          ),
          ListTile(
            title: Text(context.loc.settingsTemperatureUnit),
            trailing: DropdownButton<int>(
              value: temperatureUnit,
              onChanged: (value) {
                setState(() {
                  temperatureUnit = value!;
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
