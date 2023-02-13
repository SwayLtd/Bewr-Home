// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart
// https://blog.codemagic.io/flutter-go-router-guide/

import 'package:bewr_home/core/widgets/appbar.dart';
import 'package:bewr_home/core/widgets/sidemenu.dart';
import 'package:bewr_home/core/widgets/navbar.dart';
import 'package:bewr_home/features/activity/activity.dart';
import 'package:bewr_home/features/automations/automations.dart';
import 'package:bewr_home/features/devices/devices.dart';
import 'package:bewr_home/features/feedback/feedback.dart';
import 'package:bewr_home/features/help/help.dart';
import 'package:bewr_home/features/home/home.dart';
import 'package:bewr_home/features/settings/settings.dart';
import 'package:bewr_home/features/test/test.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        // Localizing road names
        routes[0]['name'] = context.loc.routesNameHome;
        routes[1]['name'] = context.loc.routesNameDevices;
        routes[2]['name'] = context.loc.routesNameAutomations;
        routes[3]['name'] = context.loc.routesNameActivity;
        routes[4]['name'] = context.loc.routesNameSettings;
        routes[5]['name'] = context.loc.routesNameHelp;
        routes[6]['name'] = context.loc.routesNameFeedback;
        routes[7]['name'] = context.loc.routesNameTest;

        return ResponsiveWrapper.builder(
          Stack(
            children: <Widget>[
              ResponsiveVisibility(
                // Show bottom navigation bar only on mobiles (smaller than TABLET)
                hiddenWhen: const [
                  Condition.largerThan(name: MOBILE),
                ],
                child: ScaffoldWithNavBar(child: child),
              ),
              ResponsiveVisibility(
                // Show app bar only on tablet (between MOBILE and DESKTOP)
                hiddenWhen: const [
                  Condition.smallerThan(name: TABLET),
                  Condition.largerThan(name: TABLET),
                ],
                child: ScaffoldWithAppBar(child: child),
              ),
              ResponsiveVisibility(
                // Show side menu only on desktop (larger than TABLET)
                hiddenWhen: const [
                  Condition.smallerThan(name: DESKTOP),
                ],
                child: ScaffoldWithSideMenu(child: child),
              ),
            ],
          ),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.autoScale(
              480,
              name: MOBILE,
            ), // 480 is the default size
            ResponsiveBreakpoint.autoScale(
              750,
              name: TABLET,
            ), // 800 is the default size
            ResponsiveBreakpoint.autoScale(
              1150,
              name: DESKTOP,
            ), // 1000 is the default size
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        );
      },
      // NoTransitionPage is a custom widget that disables the default page transition
      routes: [
        GoRoute(
          path: '/home',
          name: "Home", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HomePage(),
          ),
        ),
        GoRoute(
          path: '/devices',
          name: "Devices", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: DevicesPage(),
          ),
        ),
        GoRoute(
          path: '/automations',
          name: "Automations", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: AutomationsPage(),
          ),
        ),
        GoRoute(
          path: '/activity',
          name: "Activity", // TODO: Localize
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ActivityPage(),
          ),
        ),
        GoRoute(
          path: '/settings',
          name: "Settings", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SettingsPage(),
          ),
        ),
        GoRoute(
          path: '/feedback',
          name: "Feedback", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: FeedbackPage(),
          ),
        ),
        GoRoute(
          path: '/help',
          name: "Help", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HelpPage(),
          ),
        ),
        GoRoute(
          path: '/test',
          name: "Test", // TODO: Localize
          pageBuilder: (context, state) => const NoTransitionPage(
            child: TestPage(),
          ),
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const HomePage(), // TODO: Add error screen
);

final routes = [
  {'path': '/home', 'index': 0, 'name': 'Home'},
  {'path': '/devices', 'index': 1, 'name': 'Devices'},
  {'path': '/automations', 'index': 2, 'name': 'Automations'},
  {'path': '/activity', 'index': 3, 'name': 'Activity'},
  {'path': '/settings', 'index': 4, 'name': 'Settings'},
  {'path': '/feedback', 'index': 5, 'name': 'Feedback'},
  {'path': '/help', 'index': 6, 'name': 'Help'},
  {'path': '/test', 'index': 7, 'name': 'Test'},
];

// Return the current route name
String routeName() {
  final route = routes.firstWhere(
    (route) => route['path'] == router.location,
    orElse: () => routes.first,
  );
  return route['name'] as String ?? "Error"; // TODO: Add error screen
}

// Return the index of the current screen
int selectedIndex() {
  final route = routes.firstWhere(
    (route) => route['path'] == router.location,
    orElse: () => routes.first,
  );
  return route['index'] as int ?? 0; // TODO: Add error screen
}

// Navigate to the screen corresponding to the index
void onTap(BuildContext context, int index) {
  final route = routes.firstWhere(
    (route) => route['index'] == index,
    orElse: () => routes.first,
  );

  // context.push as been used instead of context.go because it works better with the back button
  // Need to check if this is not creating a loop when we are faking the index for the bottom navigation bar
  return () {
    context.push(route['path'] as String ?? '/home'); // TODO: Add error screen
    Navigator.maybePop(context); // Close the drawer
  }();
}
