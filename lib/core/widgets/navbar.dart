import 'package:flutter/material.dart';
import 'package:smart_home_app/core/routes.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.child,
    super.key,
  });

  /// The widget to display in the body of the Scaffold.
  /// In this sample, it is a Navigator.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
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
        onTap: (int idx) => _onItemTapped(idx, context),
        currentIndex: _selectedIndex(),
      ),
    );
  }

  static int _selectedIndex() {
    final String location = router.location;
    if (location.startsWith('/')) {
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

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        router.go('/');
        break;
      case 1:
        router.go('/devices');
        break;
      case 2:
        router.go('/automations');
        break;
    }
  }
}
