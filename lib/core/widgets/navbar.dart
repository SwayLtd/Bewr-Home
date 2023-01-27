import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int _currentIndex = 0;

  List<BottomNavigationBarItem> _items = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.devices_other_outlined),
    label: 'Devices',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.auto_awesome_outlined),
    label: 'Automations',
  ),
];

  @override
  void initState() {
    super.initState();
    _currentIndex = selectedIndex();
  }

  /// The widget to display in the body of the Scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      appBar: AppBar(
        title: Text(
            "${GoRouter.of(context).location.split("/").last.toString()[0].toUpperCase()}${GoRouter.of(context).location.split("/").last.toString().substring(1).toLowerCase()}"), // https://stackoverflow.com/questions/29628989/how-to-capitalize-the-first-letter-of-a-string-in-dart
        centerTitle: true,
        elevation: 0.5, // configure the separator line under the AppBar
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: selectedIndex() >= _items.length ? Theme.of(context).disabledColor : Theme.of(context).primaryColor, // Faking a disabled color if the index is out of range
        items: _items,
        onTap: (int index) {
          onTap(context, index);
          _currentIndex = index;
        },
        currentIndex: (int index) {
          return _currentIndex = index >= _items.length ? 0 : index;
        }(_currentIndex),
      ),
    );
  }
}
