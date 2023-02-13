import 'package:bewr_home/core/constants/l10n.dart';
import 'package:bewr_home/core/routes.dart';
import 'package:bewr_home/core/widgets/sidebar/side_navigation.dart';
import 'package:flutter/material.dart';

class ScaffoldWithSideBar extends StatefulWidget {
  const ScaffoldWithSideBar({super.key, required this.child});
  final Widget child;

  @override
  State<ScaffoldWithSideBar> createState() => _ScaffoldWithSideBarState();
}

class _ScaffoldWithSideBarState extends State<ScaffoldWithSideBar> {
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
      SideNavigationBarItem(
        icon: Icons.help_outline,
        label: context.loc.drawerHelp,
      ),
      SideNavigationBarItem(
        icon: Icons.checklist_outlined,
        label: context.loc.drawerTest,
      ),
    ];

    final SideBarToggler barToggler = SideBarToggler(
      visible: false,
      expandIcon: Icons.menu,
      shrinkIcon: Icons.close,
      // onToggle: () => debugPrint('toggled'),
    );

    return Scaffold(
      body: Row(
        // The Row is needed to display the current view
        children: [
          // SideNavigationBar is similar to BottomNavigationBar
          SideNavigationBar(
            toggler: barToggler,
            theme: SideNavigationBarTheme(
              backgroundColor: Theme.of(context)
                  .scaffoldBackgroundColor, // TODO: Refresh automatically when theme changes
              togglerTheme: SideNavigationBarTogglerTheme(
                expandIconColor: Theme.of(context).iconTheme.color,
                shrinkIconColor: Theme.of(context).iconTheme.color,
              ),
              itemTheme: SideNavigationBarItemTheme(
                selectedItemColor: Theme.of(context).iconTheme.color,
                unselectedItemColor: Theme.of(context).iconTheme.color,
                selectedBackgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.5),
                 //iconShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
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
        // Hamburger menu icon to toggle the side navigation bar display
        leading: IconButton(
          tooltip: context.loc.appbarMenuIconTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {
            setState(() => toggle(barToggler));
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
                right: 7.5,
              ), // Add some margin to the edges of the avatar
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
