import 'package:bewr_home/core/l10n.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuggestionsWidget(),
    );
  }
}

// Connected object model
class ConnectedObject {
  final String type;
  bool state;
  Map<String, dynamic> otherInfo;

  ConnectedObject(this.type, this.state, this.otherInfo);
}

// Widget to display a suggestion
class SuggestionsWidget extends StatefulWidget {
  @override
  _SuggestionsWidgetState createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  List<String> suggestions = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Example of a list of connected objects
    final List<ConnectedObject> connectedObjects = [
      ConnectedObject(
        'smoke_detector',
        true,
        {'location': context.loc.testLocationKitchen},
      ),
      ConnectedObject('oven', true,
          {'location': context.loc.testLocationKitchen},),
      ConnectedObject(
        'water_leakage_detector',
        false,
        {'location': context.loc.testLocationKitchen},
      ),
      ConnectedObject(
        'thermostat',
        false,
        {'location': context.loc.testLocationKitchen},
      ),
      ConnectedObject(
        'power_switch',
        false,
        {'location': context.loc.testLocationKitchen},
      ),
      ConnectedObject(
        'motion_sensor',
        true,
        {'location': context.loc.testLocationKitchen},
      ),
    ];

    // Function that returns a list of suggestions based on the connected objects list and their states and other information
    List<String> getSuggestions(List connected) {
      final List<String> suggestions = [];
      final List<ConnectedObject> connectedObjects =
          connected as List<ConnectedObject>;

      // Browse each connected object and add a suggestion if it meets certain conditions between them
      for (final ConnectedObject obj1 in connectedObjects) {
        for (final ConnectedObject obj2 in connectedObjects) {
          if (obj1.type == 'smoke_detector' &&
              obj1.state == true &&
              obj2.type == 'oven' &&
              obj2.state == true) {
            suggestions.add(
              context.loc.testSuggestion1,
            );
          }
          if (obj1.type == 'thermostat' &&
              obj1.state == true &&
              obj2.type == 'sensor_temp' &&
              obj2.state == true) {
            suggestions.add(
              context.loc.testSuggestion2,
            );
          }
          if (obj1.type == 'power_switch' &&
              obj1.state == false &&
              obj2.type == 'motion_sensor' &&
              obj2.state == true) {
            suggestions.add(
              context.loc.testSuggestion3,
            );
          }
        }
      }

      // Browse each connected object and add a suggestion if it meets certain conditions
      for (final ConnectedObject obj in connectedObjects) {
        if (obj.type == 'water_leakage_detector' && obj.state == false) {
          suggestions.add(
            context.loc.testSuggestion4,
          );
        }
      }

      return suggestions;
    }

    suggestions =
        getSuggestions(connectedObjects); // Get the list of suggestions

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListView.builder(
        itemCount: suggestions.length, // Number of suggestions
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                suggestions[index],
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
