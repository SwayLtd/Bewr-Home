// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart
// https://blog.codemagic.io/flutter-go-router-guide/

import 'package:bewr_home/core/widgets/appbar.dart';
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
                // Show app bar only on tablets and desktops (larger than MOBILE)
                hiddenWhen: const [
                  Condition.smallerThan(name: TABLET),
                ],
                child: ScaffoldWithAppBar(child: child),
              ),
            ],
          ),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480,
                name: MOBILE,), // 480 is the default size
            ResponsiveBreakpoint.autoScale(800,
                name: TABLET,), // 800 is the default size
            ResponsiveBreakpoint.resize(1000,
                name: DESKTOP,), // 1000 is the default size
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

// Return the current route name
String routeName() {
  final routes = {
    '/home': 'Home',
    '/devices': 'Devices',
    '/automations': 'Automations',
    '/activity': 'Activity',
    '/settings': 'Settings',
    '/feedback': 'Feedback',
    '/help': 'Help',
    '/test': 'Test',
  };

  return routes[router.location] ?? "Error"; // TODO: Add error screen
}

// Returns the index of the current screen
int selectedIndex() {
  final routes = {
    '/home': 0,
    '/devices': 1,
    '/automations': 2,
    '/activity': 3,
    '/settings': 4,
    '/feedback': 5,
    '/help': 6,
    '/test': 7,
  };

  return routes[router.location] ?? 0; // TODO: Add error screen
}

// Navigates to the screen corresponding to the index
void onTap(BuildContext context, int index) {
  final routes = {
    0: '/home',
    1: '/devices',
    2: '/automations',
    3: '/activity',
    4: '/settings',
    5: '/feedback',
    6: '/help',
    7: '/test',
  };

  // context.push as been used instead of context.go because it works better with the back button
  // Need to check if this is not creating a loop when we are faking the index for the bottom navigation bar
  return context.push(routes[index] ?? "/home"); // TODO: Add error screen
}
