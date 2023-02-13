// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart
// https://blog.codemagic.io/flutter-go-router-guide/

// ignore_for_file: avoid_dynamic_calls

import 'package:bewr_home/core/constants/l10n.dart';
import 'package:bewr_home/core/utils/error/error_not_found.dart';
import 'package:bewr_home/core/widgets/appbar/appbar.dart';
import 'package:bewr_home/core/widgets/navbar.dart';
import 'package:bewr_home/core/widgets/sidebar/sidebar.dart';
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

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

List routes = [
  {
    'name': 'Home',
    'path': '/',
    'index': 0,
    'screen': const HomeScreen(),
  },
  {
    'name': 'Devices',
    'path': '/devices',
    'index': 1,
    'screen': const DevicesScreen(),
  },
  {
    'name': 'Automations',
    'path': '/automations',
    'index': 2,
    'screen': const AutomationsScreen(),
  },
  {
    'name': 'Activity',
    'path': '/activity',
    'index': 3,
    'screen': const ActivityScreen(),
  },
  {
    'name': 'Settings',
    'path': '/settings',
    'index': 4,
    'screen': const SettingsScreen(),
  },
  {
    'name': 'Help',
    'path': '/help',
    'index': 5,
    'screen': const HelpScreen(),
  },
  {
    'name': 'Feedback',
    'path': '/feedback',
    'index': 6,
    'screen': const FeedbackScreen(),
  },
  {
    'name': 'Test',
    'path': '/test',
    'index': 7,
    'screen': const TestScreen(),
  },
];

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  // routerNeglect: false, // Stop the router from adding the pages to the browser history > Setting for user privacy
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
                child: ScaffoldWithSideBar(child: child),
              ),
            ],
          ),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(640, name: TABLET),
            ResponsiveBreakpoint.resize(1024, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1280, name: 'HD'),
            ResponsiveBreakpoint.resize(1536, name: 'FHD'),
            ResponsiveBreakpoint.autoScale(2460, name: 'UHD'),
          ],
        );
      },
      routes: getRoutes(),
    ),
  ],
  errorBuilder: (context, state) => NotFoundError(state.error),
);

List<RouteBase> getRoutes() {
  final List<RouteBase> generatedRoutes = [];
  for (final route in routes) {
    generatedRoutes.add(
      GoRoute(
        path: route['path'] as String,
        name: route['name'] as String,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          // NoTransitionPage is a custom widget that disables the default page transition animation
          child: route['screen'] as Widget,
        ),
      ),
    );
  }

  return generatedRoutes;
}

// Return the current route name
String routeName() {
  final route = routes.firstWhere(
    (route) => route['path'] == router.location,
    orElse: () => routes.first,
  );
  return route['name'] as String;
}

// Return the index of the current screen
int selectedIndex() {
  final route = routes.firstWhere(
    (route) => route['path'] == router.location,
    orElse: () => routes.first,
  );
  return route['index'] as int;
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
    context.push(route['path'] as String);
    Navigator.maybePop(context); // Close the drawer
  }();
}
