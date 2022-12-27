//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home_app/core/app_theme.dart';
import 'package:smart_home_app/core/routes.dart';
import 'package:smart_home_app/features/home/widgets/draggablereorderablegridview.dart';


void main() {
  runApp(
    MaterialApp(
      routes: Routes.routes,
      initialRoute: Routes.home,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
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
  int _pageIndex = 0;
  final List<Widget> _pages = [Home(), Devices(), Automations(), Activity(), Settings(), Feedback(), Help(), Test()];

  void _selectPage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // https://stackoverflow.com/questions/52489458/how-to-change-status-bar-color-in-flutter
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white, // Status bar color

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text('Pryve', style: TextStyle(color: Colors.black)),
        elevation: 0.5, // configure the separator line under the AppBar
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {
                // Accédez aux paramètres utilisateur ici
              },
            ),
          ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            height: 48,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 0 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: _pageIndex == 0 ? Colors.blue : Colors.grey,
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
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 1 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Devices',
                          style: TextStyle(
                            color: _pageIndex == 1 ? Colors.blue : Colors.grey,
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
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 2 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Automations',
                          style: TextStyle(
                            color: _pageIndex == 2 ? Colors.blue : Colors.grey,
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
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 3 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Activity',
                          style: TextStyle(
                            color: _pageIndex == 3 ? Colors.blue : Colors.grey,
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
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 4 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            color: _pageIndex == 4 ? Colors.blue : Colors.grey,
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
                    buttonTheme: const ButtonThemeData(
                      shape: RoundedRectangleBorder(
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
                          color: _pageIndex == 7 ? Colors.blue : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Test',
                          style: TextStyle(
                            color: _pageIndex == 7 ? Colors.blue : Colors.grey,
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
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Home'),
                    selected: _pageIndex == 0,
                    onTap: () {
                      setState(() {
                          _pageIndex = 0;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.devices_other_outlined),
                    title: const Text('Devices'),
                    selected: _pageIndex == 1,
                    onTap: () {
                      setState(() {
                          _pageIndex = 1;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.auto_awesome_outlined),
                    title: const Text('Automations'),
                    selected: _pageIndex == 2,
                    onTap: () {
                      setState(() {
                          _pageIndex = 2;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
                    title: const Text('Activity'),
                    selected: _pageIndex == 3,
                    onTap: () {
                      setState(() {
                          _pageIndex = 3;
                        });
                      Navigator.of(context).pop();
                    },
                  ),
                ]
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
                  selected: _pageIndex == 4,
                  onTap: () {
                    setState(() {
                        _pageIndex = 4;
                      });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.feedback_outlined),
                  title: const Text('Feedback'),
                  selected: _pageIndex == 5,
                  onTap: () {
                    setState(() {
                        _pageIndex = 5;
                      });
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline),
                  title: const Text('Help'),
                  selected: _pageIndex == 6,
                  onTap: () {
                    setState(() {
                        _pageIndex = 6;
                      });
                    Navigator.of(context).pop();
                  },
                ),
                  ],
                )
            )
          ],
        ),
      ),
      body: _pages[_pageIndex],
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.grey;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    onTap: onClicked,
  );
}

Widget buildScrollMenuItem({
  required String text,
  VoidCallback? onClicked,
}) {
  const color = Colors.grey;

  return TextButton(
    style: TextButton.styleFrom(foregroundColor: color),
    onPressed: onClicked,
    child: Text(text),
  );
}

final List<Widget> listOfWidgets = [
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.red,
      child: Center(
        child: Text('Item 1'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.green,
      child: Center(
        child: Text('Item 2'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: Center(
        child: Text('Item 3'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.yellow,
      child: Center(
        child: Text('Item 4'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.purple,
      child: Center(
        child: Text('Item 5'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      color: Colors.orange,
      child: Center(
        child: Text('Item 6'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 7'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 8'),
      ),
    ),
    const Card(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text('Item 9'),
      ),
    ),
    const Card(
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
  final List<SmartDevice> _devices = [livingLight, thermostat, camera, outlet];

  @override
  void initState() {
    super.initState();
    // Récupérer les informations sur les objets connectés ici
    // ...
  }

  void _showLampControlBottomSheet() {
    int lampIntensity = 50;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 500,
          ),
          child: Column(
            children: [
              const Text('Intensité de la lampe'),
              Slider(
                value: lampIntensity.toDouble(),
                max: 100,
                onChanged: (double newIntensity) {
                  setState(() {
                    lampIntensity = newIntensity.round();
                  });
                },
              ),
            ],
          ),
        );
      },
      shape: const RoundedRectangleBorder(
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
                    icon: const Icon(Icons.power_settings_new),
                    onPressed: () {
                      // Gérer le contrôle de l'objet connecté ici
                      // ...
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
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
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
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
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
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
        child: const Icon(Icons.add),
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
          child: const Icon(
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
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                
              },
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.info),
            title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
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
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                
              },
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
              icon: const Icon(Icons.more_vert),
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
                      ))
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

class Feedback extends StatefulWidget {
  @override
  _FeedbackState createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  final _formKey = GlobalKey<FormState>();
  String _feedbackTitle = '';
  String _email = '';
  String _description = '';
  final List<Attachment> _attachments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Titre du feedback',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer un titre';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _feedbackTitle = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Adresse email (facultatif)',
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && !value.contains('@')) {
                      return 'Veuillez entrer une adresse email valide';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Description du problème',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer une description';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _description = value!;
                  },
                  maxLines: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Pièces jointes'),
                    TextButton(
                      child: const Text('Ajouter une pièce jointe'),
                      onPressed: () {
                        // Ouvrir un sélecteur de fichier et ajouter le fichier sélectionné à la liste des pièces jointes ici
                        // ...
                      },
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _attachments.length,
                  itemBuilder: (context, index) {
                    final attachment = _attachments[index];
                    return ListTile(
                      leading: const Icon(Icons.attach_file),
                      title: Text(attachment.name),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Supprimer la pièce jointe de la liste ici
                          // ...
                        },
                      ),
                    );
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: TextButton(
                    child: const Text('Envoyer'),
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
  final List<String> suggestions = [];

  // Browse each connected object and add a suggestion if it meets certain conditions between them
  for (final ConnectedObject obj1 in connectedObjects) {
    for (final ConnectedObject obj2 in connectedObjects) {
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
  for (final ConnectedObject obj in connectedObjects) {
    if (obj.type == 'detecteur_fuite_eau' && obj.state == false) {
      suggestions.add("Acheter un détecteur de fuite d'eau pour être informé immédiatement en cas de fuite d'eau dans votre cuisine");
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
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: suggestions.length,
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
