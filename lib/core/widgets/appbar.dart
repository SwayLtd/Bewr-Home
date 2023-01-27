import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldWithAppBar extends StatefulWidget {
  const ScaffoldWithAppBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithAppBar> createState() => _ScaffoldWithAppBarState();
}

class _ScaffoldWithAppBarState extends State<ScaffoldWithAppBar> {
  /// The widget to display in the body of the Scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    selected: selectedIndex() == 0,
                    onTap: () {
                      setState(() {
                        onTap(context, 0);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.devices_other_outlined),
                    title: const Text('Devices'),
                    selected: selectedIndex() == 1,
                    onTap: () {
                      setState(() {
                        onTap(context, 1);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.auto_awesome_outlined),
                    title: const Text('Automations'),
                    selected: selectedIndex() == 2,
                    onTap: () {
                      setState(() {
                        onTap(context, 2);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
                    title: const Text('Activity'),
                    selected: selectedIndex() == 3,
                    onTap: () {
                      setState(() {
                        onTap(context, 3);
                      });
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
                    selected: selectedIndex() == 4,
                    onTap: () {
                      setState(() {
                        onTap(context, 4);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.feedback_outlined),
                    title: const Text('Feedback'),
                    selected: selectedIndex() == 5,
                    onTap: () {
                      setState(() {
                        onTap(context, 5);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline),
                    title: const Text('Help'),
                    selected: selectedIndex() == 6,
                    onTap: () {
                      setState(() {
                        onTap(context, 6);
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Bewr'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // Access user settings
              setState(() {
                onTap(context, 4);
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 7.5),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/21986104',
                ),
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(36),
          child: SizedBox(
            height: 36,
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
                          color: selectedIndex() == 0
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: selectedIndex() == 0
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            onTap(context, 0);
                          });
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
                          color: selectedIndex() == 1
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Devices',
                          style: TextStyle(
                            color: selectedIndex() == 1
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            onTap(context, 1);
                          });
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
                          color: selectedIndex() == 2
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Automations',
                          style: TextStyle(
                            color: selectedIndex() == 2
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyText1!.color,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            onTap(context, 2);
                          });
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
      body: widget.child,
    );
  }
}
