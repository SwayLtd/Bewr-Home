import 'package:bewr_home/core/constants/l10n.dart';
import 'package:bewr_home/core/routes.dart';
import 'package:bewr_home/core/widgets/appbar/appbar_item.dart';
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
                    title: Text(context.loc.drawerHome),
                    selected: selectedIndex() == 0,
                    onTap: () {
                      setState(() {
                        onTap(context, 0);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.devices_other_outlined),
                    title: Text(context.loc.drawerDevices),
                    selected: selectedIndex() == 1,
                    onTap: () {
                      setState(() {
                        onTap(context, 1);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.auto_awesome_outlined),
                    title: Text(context.loc.drawerAutomations),
                    selected: selectedIndex() == 2,
                    onTap: () {
                      setState(() {
                        onTap(context, 2);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications_outlined),
                    title: Text(context.loc.drawerActivity),
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
                    title: Text(context.loc.drawerSettings),
                    selected: selectedIndex() == 4,
                    onTap: () {
                      setState(() {
                        onTap(context, 4);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.feedback_outlined),
                    title: Text(context.loc.drawerFeedback),
                    selected: selectedIndex() == 5,
                    onTap: () {
                      setState(() {
                        onTap(context, 5);
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline),
                    title: Text(context.loc.drawerHelp),
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
        title: Text(context.loc.appbarTitle),
        actions: <Widget>[
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              // Access user settings
              setState(() {
                onTap(context, 4);
              });
            },
            child: Container(
              margin: const EdgeInsets.only(
                left: 7.5,
                right: 7.5,
              ), // // Add some margin to the right of the avatar
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
                // TODO: Create a themed widget for the bottom menu buttons
                AppBarItem(
                  title: context.loc.bottomAppbarHome,
                  index: 0,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarDevices,
                  index: 1,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarAutomations,
                  index: 2,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarActivity,
                  index: 3,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarSettings,
                  index: 4,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarFeedback,
                  index: 5,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarHelp,
                  index: 6,
                ),
                AppBarItem(
                  title: context.loc.bottomAppbarTest,
                  index: 7,
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
