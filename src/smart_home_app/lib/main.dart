//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

import 'package:flutter/material.dart';
import 'draggablereorderablegridview.dart';
void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      title: 'Pryve Home',
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [Home(), Devices(), Automations(), Activity(), Settings(), Feedback(), Help(), Test()];

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text('Pryve', style: TextStyle(color: Colors.black)),
        leading: null,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: () {
                // Accédez aux paramètres utilisateur ici
              },
            ),
          ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Container(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 0 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: _currentPageIndex == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(0);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 1 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Devices',
                          style: TextStyle(
                            color: _currentPageIndex == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(1);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 2 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Automations',
                          style: TextStyle(
                            color: _currentPageIndex == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(2);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 3 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            color: _currentPageIndex == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(3);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 4 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: _currentPageIndex == 4 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(4);
                        },
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.transparent, width: 0),
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          color: _currentPageIndex == 7 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Test',
                          style: TextStyle(
                            color: _currentPageIndex == 7 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          _selectPage(7);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // https://stackoverflow.com/questions/50471025/flutter-align-button-to-bottom-of-drawer
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              // ListView contains a group of widgets that scroll inside the drawer
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text('Home'),
                    selected: _currentPageIndex == 0,
                    onTap: () {
                      setState(() {
                          _currentPageIndex = 0;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.devices_other_outlined),
                    title: Text('Devices'),
                    selected: _currentPageIndex == 1,
                    onTap: () {
                      setState(() {
                          _currentPageIndex = 1;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.auto_awesome_outlined),
                    title: Text('Automations'),
                    selected: _currentPageIndex == 2,
                    onTap: () {
                      setState(() {
                          _currentPageIndex = 2;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications_outlined),
                    title: Text('Activity'),
                    selected: _currentPageIndex == 3,
                    onTap: () {
                      setState(() {
                          _currentPageIndex = 3;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                ]
              ),
            ),
            // This container holds the align
            Container(
                // This align moves the children to the bottom
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    // This container holds all the children that will be aligned
                    // on the bottom and should not scroll with the above ListView
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(Icons.settings_outlined),
                          title: Text('Settings'),
                          selected: _currentPageIndex == 4,
                          onTap: () {
                            setState(() {
                                _currentPageIndex = 4;
                              });
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.feedback_outlined),
                          title: Text('Feedback'),
                          selected: _currentPageIndex == 5,
                          onTap: () {
                            setState(() {
                                _currentPageIndex = 5;
                              });
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.help_outline),
                          title: Text('Help'),
                          selected: _currentPageIndex == 6,
                          onTap: () {
                            setState(() {
                                _currentPageIndex = 6;
                              });
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  )
                )
              )
          ],
        ),
      ),
      body: _pages[_currentPageIndex],
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.grey;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    onTap: onClicked,
  );
}

Widget buildScrollMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  final color = Colors.grey;

  return TextButton(
    style: TextButton.styleFrom(foregroundColor: color),
    child: Text(text),
    onPressed: onClicked,
  );
}

final List<Widget> listOfWidgets = [
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.red,
      child: Center(
        child: Text('Item 1'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.green,
      child: Center(
        child: Text('Item 2'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: Center(
        child: Text('Item 3'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.yellow,
      child: Center(
        child: Text('Item 4'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.purple,
      child: Center(
        child: Text('Item 5'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      color: Colors.orange,
      child: Center(
        child: Text('Item 6'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 7'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 8'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 9'),
      ),
    ),
    Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 10'),
      ),
    ),
  ];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableReorderableGridView(items: listOfWidgets,),
    );
  }
}

class Devices extends StatefulWidget {
  @override
  _DevicesState createState() => _DevicesState();
}

final livingLight = SmartDevice('Lampe de salon', 'Allumée', Icons.lightbulb_outline);
final thermostat = SmartDevice('Thermostat', '22°C', Icons.ac_unit);
final camera = SmartDevice('Caméra de surveillance', 'En ligne', Icons.videocam);
final outlet = SmartDevice('Prise de salon', 'Allumée', Icons.power_input);

class _DevicesState extends State<Devices> {
  List<SmartDevice> _devices = [livingLight, thermostat, camera, outlet];

  @override
  void initState() {
    super.initState();
    // Récupérer les informations sur les objets connectés ici
    // ...
  }

  void _showLampControlBottomSheet() {
    int _lampIntensity = 50;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 500,
          ),
          child: Container(
            child: Column(
              children: [
                Text('Intensité de la lampe'),
                Slider(
                  value: _lampIntensity.toDouble(),
                  min: 0,
                  max: 100,
                  onChanged: (double newIntensity) {
                    setState(() {
                      _lampIntensity = newIntensity.round();
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      isDismissible: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _devices.length,
        itemBuilder: (context, index) {
          final device = _devices[index];
          return Card(
            child: ListTile(
              leading: Icon(device.icon),
              title: Text(device.name),
              subtitle: Text(device.status),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.power_settings_new),
                    onPressed: () {
                      // Gérer le contrôle de l'objet connecté ici
                      // ...
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // Gérer les paramètres de l'objet connecté ici
                      // ...
                    },
                  ),
                ],
              ),
              onTap: () {
                _showLampControlBottomSheet();
              },
            ),
          );
        },
      ),
    );
  }
}

class SmartDevice {
  final String name;
  final String status;
  final IconData icon;

  SmartDevice(this.name, this.status, this.icon);
}

class Automations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              'Quotidien',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          RoutineTile(
            title: 'Réveil',
            description: 'Allume les lumières et lance la musique',
            icon: Icons.alarm,
            onPressed: () {
              // Lancer la routine de réveil ici
            },
          ),
          RoutineTile(
            title: 'Départ',
            description: 'Eteint les lumières et met en veille la télévision',
            icon: Icons.commute,
            onPressed: () {
              // Lancer la routine de départ ici
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              'Soirée',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          RoutineTile(
            title: 'Film',
            description: 'Allume la télévision et la barre de son',
            icon: Icons.movie,
            onPressed: () {
              // Lancer la routine de film ici
            },
          ),
          RoutineTile(
            title: 'Dîner',
            description: 'Allume les lumières de la cuisine et lance de la musique',
            icon: Icons.restaurant,
            onPressed: () {
              // Lancer la routine de dîner ici
            },
          ),
          // Ajoutez autant de routines et de catégories que nécessaire ici
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ouvrez la page de création de routine ici
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class RoutineTile extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  const RoutineTile({
    required this.title,
    required this.description,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      leading: Icon(icon),
      trailing: InkWell(
        onTap: onPressed,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 12),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tâche 1',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Dec 10, 12:00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Description 2',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                
              },
            ),
          ),
          SizedBox(height: 12),
          ListTile(
            leading: Icon(Icons.info),
            title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tâche 2',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Dec 10, 11:00',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Description 2',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                
              },
            ),
          ),
          SizedBox(height: 12),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tâche 3',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Dec 10, 10:00',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Description 3',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

bool _notificationsEnabled = true;
String _language = 'Français';
int _temperatureUnit = 0;

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Autres idées : Mode sombre, Volume des alarmes, Géolocalisation, Fuseau horaire, Animations, Mode avancé
      body: ListView(
        children: <Widget>[
          SwitchListTile(
            title: Text('Notifications'),
            value: _notificationsEnabled,
            onChanged: (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          ListTile(
            title: Text('Langue'),
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
                      ))
                  .toList(),
            ),
          ),
          ListTile(
            title: Text('Unité de température'),
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
        child: Icon(Icons.save),
      ),
    );
  }
}

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  final _formKey = GlobalKey<FormState>();
  String _feedbackTitle = '';
  String _email = '';
  String _description = '';
  List<Attachment> _attachments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Titre du feedback',
                  ),
                  validator: (value) {
                    //if (value.isEmpty) {
                      //return 'Veuillez entrer un titre';
                    //}
                    return null;
                  },
                  onSaved: (value) {
                    //_feedbackTitle = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Adresse email (facultatif)',
                  ),
                  validator: (value) {
                    //if (value.isNotEmpty && !value.contains('@')) {
                      //return 'Veuillez entrer une adresse email valide';
                    //}
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Description du problème',
                  ),
                  validator: (value) {
                    //if (value.isEmpty) {
                      //return 'Veuillez entrer une description';
                    //}
                    return null;
                  },
                  onSaved: (value) {
                    //_description = value;
                  },
                  maxLines: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Pièces jointes'),
                      TextButton(
                        child: Text('Ajouter une pièce jointe'),
                        onPressed: () {
                          // Ouvrir un sélecteur de fichier et ajouter le fichier sélectionné à la liste des pièces jointes ici
                          // ...
                        },
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _attachments.length,
                  itemBuilder: (context, index) {
                    final attachment = _attachments[index];
                    return ListTile(
                      leading: Icon(Icons.attach_file),
                      title: Text(attachment.name),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Supprimer la pièce jointe de la liste ici
                          // ...
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: TextButton(
                    child: Text('Envoyer'),
                    onPressed: () {
                          //if (_formKey.currentState.validate()) {
                          // Envoyer le feedback ici
                          // ...
                          //}
                        },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Attachment {
  final String name;
  final String path;

  Attachment({
    required this.name,
    required this.path,
  });
}

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres de l\'appareil'),
            onTap: () {
              //Navigator.push(context, CupertinoPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Aide et assistance'),
            onTap: () {
              //Navigator.push(context, CupertinoPageRoute(builder: (context) => Feedback()));
            },
          ),
        ],
      ),
    );
  }
}

class ConnectedObject {
  final String type;
  bool state;
  Map<String, dynamic> otherInfo;

  ConnectedObject(this.type, this.state, this.otherInfo);

  void setState(bool newState) {
  state = newState;
}
}

// List of connected objects
List<ConnectedObject> connectedObjects = [
  ConnectedObject('detecteur_fumee', true, {'location': 'cuisine'}),
  ConnectedObject('four', true, {'location': 'cuisine'}),
  ConnectedObject('detecteur_fuite_eau', false, {'location': 'cuisine'}),
  ConnectedObject('thermostat', false, {'location': 'cuisine'}),
  ConnectedObject('interrupteur', false, {'location': 'cuisine'}),
  ConnectedObject('capteur_mouvement', true, {'location': 'cuisine'}),
];

List<String> getSuggestions() {
  // List of suggestions
  List<String> suggestions = [];

  // Browse each connected object and add a suggestion if it meets certain conditions between them
  for (ConnectedObject obj1 in connectedObjects) {
    for (ConnectedObject obj2 in connectedObjects) {
      if (obj1.type == 'detecteur_fumee' && obj1.state == true && obj2.type == 'four' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour éteindre le four en cas de détection de fumée par le détecteur de fumée');
      }
      if (obj1.type == 'thermostat' && obj1.state == true && obj2.type == 'capteur_temp' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour ouvrir les fenêtres de la cuisine lorsque la température de la pièce dépasse un certain seuil');
      }
      if (obj1.type == 'interrupteur' && obj1.state == false && obj2.type == 'capteur_mouvement' && obj2.state == true) {
        suggestions.add('Ajouter une automatisation pour allumer la lumière de la cuisine lorsque le détecteur de mouvement détecte du mouvement la nuit');
      }
    }
  }

  // Browse each connected object and add a suggestion if it meets certain conditions
  for (ConnectedObject obj in connectedObjects) {
    if (obj.type == 'detecteur_fuite_eau' && obj.state == false) {
      suggestions.add('Acheter un détecteur de fuite d\'eau pour être informé immédiatement en cas de fuite d\'eau dans votre cuisine');
    }
  }

  return suggestions;
}

// Class managing the display of the suggestion list
class SuggestionsWidget extends StatefulWidget {
  @override
  _SuggestionsWidgetState createState() => _SuggestionsWidgetState();

  static void updateSuggestions(BuildContext context) {
    final state = context.findAncestorStateOfType<_SuggestionsWidgetState>();
    if (state != null) {
      state.setState(() {
        state.suggestions = getSuggestions();
      });
    }
  }
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  List<String> suggestions = [];

  @override
  void initState() {
    super.initState();
    suggestions = getSuggestions();
  }

  @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: suggestions.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  suggestions[index],
                  style: TextStyle(
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


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // Refresh the suggestions by calling the static method updateSuggestions of SuggestionsWidget
          SuggestionsWidget.updateSuggestions(context);
        },
        child: SuggestionsWidget(),
      ),
    );
  }
}