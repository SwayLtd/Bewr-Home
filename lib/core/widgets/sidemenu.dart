import 'package:bewr_home/core/l10n.dart';
import 'package:bewr_home/core/routes.dart';
import 'package:bewr_home/core/widgets/sidebar/side_navigation.dart';
import 'package:flutter/material.dart';

class ScaffoldWithSideMenu extends StatefulWidget {
  const ScaffoldWithSideMenu({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithSideMenu> createState() => _ScaffoldWithSideMenuState();
}

class _ScaffoldWithSideMenuState extends State<ScaffoldWithSideMenu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<SideNavigationBarItem> items = <SideNavigationBarItem>[
      SideNavigationBarItem(
        icon: Icons.home_outlined,
        label: context.loc.drawerHome,
      ),
      SideNavigationBarItem(
        icon: Icons.devices_other_outlined,
        label: context.loc.drawerDevices,
      ),
      SideNavigationBarItem(
        icon: Icons.auto_awesome_outlined,
        label: context.loc.drawerAutomations,
      ),
      SideNavigationBarItem(
        icon: Icons.notifications_outlined,
        label: context.loc.drawerActivity,
      ),
      SideNavigationBarItem(
        icon: Icons.settings_outlined,
        label: context.loc.drawerSettings,
      ),
      SideNavigationBarItem(
        icon: Icons.feedback_outlined,
        label: context.loc.drawerFeedback,
      ),
    ];

    return Scaffold(
      body: Row(
        // The Row is needed to display the current view
        children: [
          /// SideNavigationBar is similar to BottomNavigationBar
          SideNavigationBar(
            toggler: SideBarToggler(
              visible: false,
              expandIcon: Icons.menu,
              shrinkIcon: Icons.close,
            ),
            theme: SideNavigationBarTheme(
              backgroundColor: Theme.of(context)
                  .scaffoldBackgroundColor, // TODO: Need to refresh automatically when theme changes
              togglerTheme: SideNavigationBarTogglerTheme(
                expandIconColor: Theme.of(context).iconTheme.color,
                shrinkIconColor: Theme.of(context).iconTheme.color,
              ),
              itemTheme: SideNavigationBarItemTheme(
                selectedItemColor: Theme.of(context).iconTheme.color,
                unselectedItemColor: Theme.of(context).iconTheme.color,
                selectedBackgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.5),
                iconShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
            items: items,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
              onTap(context, index);
            },
            selectedIndex: (int index) {
              return _currentIndex = index >= items.length
                  ? 0
                  : index; // Faking the side navigation bar index if the index is out of range
            }(_currentIndex),
          ),
          Expanded(
            child: widget.child,
          )
        ],
      ),
      appBar: AppBar(
        title: Text(context.loc.appbarTitle),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() => toggle());
          },
        ),
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
                  right: 7.5), // // Add some margin to the right of the avatar
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/21986104', // TODO: Get user avatar
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
