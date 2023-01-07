import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithNavBar> createState() =>
      _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  /// The widget to display in the body of the Scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        items: const <BottomNavigationBarItem>[
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
        ],
        onTap: _onTap,
        currentIndex: _selectedIndex(context),
      ),
    );
  }

  static int _selectedIndex(BuildContext context) {
    final String location = router.location;
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/devices')) {
      return 1;
    }
    if (location.startsWith('/automations')) {
      return 2;
    }
    return 0;
  }

  void _onTap(int index) {
    switch (index) {
      case 0:
        return context.push('/home');
      case 1:
        return context.push('/devices');
      case 2:
        return context.push('/automations');
      default:
        return context.push('/home');
    }
  }
}
