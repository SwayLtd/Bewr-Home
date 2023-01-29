import 'package:bewr_home/core/l10n.dart';
import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = selectedIndex();
  }

  /// The widget to display in the body of the Scaffold.
  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.home_outlined),
        label: context.loc.bottomnavbarHome,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.devices_other_outlined),
        label: context.loc.bottomnavbarDevices,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.auto_awesome_outlined),
        label: context.loc.bottomnavbarAutomations,
      ),
    ];
    return Scaffold(
      body: widget.child,
      appBar: AppBar(
        title: Text(routeName()),
        // title: Text("${GoRouter.of(context).location.split("/").last.toString()[0].toUpperCase()}${GoRouter.of(context).location.split("/").last.toString().substring(1).toLowerCase()}",), // Show the current page title in the AppBar based on the current route path name > Need to find a way to find the name of the current route > TO DO: Localize
        centerTitle: true, // Center the title in the AppBar
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // Access user settings screen
              setState(() {
                onTap(context, 4);
              });
            },
            child: Container(
              margin: const EdgeInsets.only(
                  right: 7.5), // Add some margin to the right of the avatar
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/21986104', // TODO: Get user avatar
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: selectedIndex() >= items.length
            ? Theme.of(context).disabledColor
            : Theme.of(context)
                .primaryColor, // Faking a disabled color if the index is out of range
        items: items,
        onTap: (int index) {
          onTap(context, index);
          _currentIndex = index;
        },
        currentIndex: (int index) {
          return _currentIndex = index >= items.length
              ? 0
              : index; // Faking the bottom navigation bar index if the index is out of range
        }(_currentIndex),
      ),
    );
  }
}
