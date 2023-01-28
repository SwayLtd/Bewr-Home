import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';

class ScaffoldWithAppBar extends StatefulWidget {
  const ScaffoldWithAppBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithAppBar> createState() => _ScaffoldWithAppBarState();
}

class _ScaffoldWithAppBarState extends State<ScaffoldWithAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                // This ensures the drawer can scroll if there isn't enough vertical space to fit everything
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Home'), // TODO: Localize
                    selected: selectedIndex() == 0,
                    onTap: () {
                      setState(() {
                        onTap(context, 0);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.devices_other_outlined),
                    title: const Text('Devices'), // TODO: Localize
                    selected: selectedIndex() == 1,
                    onTap: () {
                      setState(() {
                        onTap(context, 1);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.auto_awesome_outlined),
                    title: const Text('Automations'), // TODO: Localize
                    selected: selectedIndex() == 2,
                    onTap: () {
                      setState(() {
                        onTap(context, 2);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
                    title: const Text('Activity'), // TODO: Localize
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
                    title: const Text('Settings'), // TODO: Localize
                    selected: selectedIndex() == 4,
                    onTap: () {
                      setState(() {
                        onTap(context, 4);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.feedback_outlined),
                    title: const Text('Feedback'), // TODO: Localize
                    selected: selectedIndex() == 5,
                    onTap: () {
                      setState(() {
                        onTap(context, 5);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline),
                    title: const Text('Help'), // TODO: Localize
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
        title: const Text('Bewr'), // TODO: Localize
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // Access user settings
              setState(() {
                onTap(context, 4);
              });
            },
            child: Container(
              margin: const EdgeInsets.only(
                  right: 7.5), // // Add some margin to the right of the avatar
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/21986104', // TODO: Get user avatar
                ),
              ),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(36), // Set the height of the bottom menu
          child: SizedBox(
            height: 36, // Set the height of the bottom menu
            child: ListView(
              scrollDirection: Axis
                  .horizontal, // Make the menu list scrollable and horizontal
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
                        // This is the bottom line that will be displayed when the button is selected
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          // Depending on the selected index, set the color of the bottom menu
                          color: selectedIndex() == 0
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Home', // TODO: Localize
                          style: TextStyle(
                            // Depending on the selected index, set the color of the text
                            color: selectedIndex() == 0
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyLarge!.color,
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
                        // This is the bottom line that will be displayed when the button is selected
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          // Depending on the selected index, set the color of the bottom menu
                          color: selectedIndex() == 1
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Devices', // TODO: Localize
                          style: TextStyle(
                            // Depending on the selected index, set the color of the text
                            color: selectedIndex() == 1
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyLarge!.color,
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
                        // This is the bottom line that will be displayed when the button is selected
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 2,
                          // Depending on the selected index, set the color of the bottom menu
                          color: selectedIndex() == 2
                              ? Theme.of(context).primaryColor
                              : Colors.transparent,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'Automations', // TODO: Localize
                          style: TextStyle(
                            // Depending on the selected index, set the color of the text
                            color: selectedIndex() == 2
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).textTheme.bodyLarge!.color,
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
