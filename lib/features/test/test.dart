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

// Example of a list of connected objects
List<ConnectedObject> connectedObjects = [
  ConnectedObject('detecteur_fumee', true, {'location': 'cuisine'}), // TODO: Localize
  ConnectedObject('four', true, {'location': 'cuisine'}), // TODO: Localize
  ConnectedObject('detecteur_fuite_eau', false, {'location': 'cuisine'}), // TODO: Localize
  ConnectedObject('thermostat', false, {'location': 'cuisine'}), // TODO: Localize
  ConnectedObject('interrupteur', false, {'location': 'cuisine'}), // TODO: Localize
  ConnectedObject('capteur_mouvement', true, {'location': 'cuisine'}), // TODO: Localize
];

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
    suggestions = getSuggestions(); // Get the list of suggestions
  }

  @override
  Widget build(BuildContext context) {
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

// Function that returns a list of suggestions based on the connected objects list and their states and other information
List<String> getSuggestions() {
  final List<String> suggestions = [];

  // Browse each connected object and add a suggestion if it meets certain conditions between them
  for (final ConnectedObject obj1 in connectedObjects) {
    for (final ConnectedObject obj2 in connectedObjects) {
      if (obj1.type == 'detecteur_fumee' && obj1.state == true && obj2.type == 'four' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour éteindre le four en cas de détection de fumée par le détecteur de fumée'); // TODO: Localize
      }
      if (obj1.type == 'thermostat' && obj1.state == true && obj2.type == 'capteur_temp' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour ouvrir les fenêtres de la cuisine lorsque la température de la pièce dépasse un certain seuil'); // TODO: Localize
      }
      if (obj1.type == 'interrupteur' && obj1.state == false && obj2.type == 'capteur_mouvement' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour allumer la lumière de la cuisine lorsque le détecteur de mouvement détecte du mouvement la nuit'); // TODO: Localize
      }
    }
  }

  // Browse each connected object and add a suggestion if it meets certain conditions
  for (final ConnectedObject obj in connectedObjects) {
    if (obj.type == 'detecteur_fuite_eau' && obj.state == false) {
      suggestions.add("Acheter un détecteur de fuite d'eau pour être informé immédiatement en cas de fuite d'eau dans votre cuisine"); // TODO: Localize
    }
  }

  return suggestions;
}
