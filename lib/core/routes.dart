// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart

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

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ResponsiveWrapper.builder(
          Stack(
            children: <Widget>[
              ResponsiveVisibility(
                hiddenWhen: const [
                  Condition.largerThan(name: MOBILE),
                ],
                child: ScaffoldWithNavBar(child: child),
              ),
              ResponsiveVisibility(
                hiddenWhen: const [
                  Condition.smallerThan(name: TABLET),
                ],
                child: ScaffoldWithAppBar(child: child),
              ),
            ],
          ),
          // maxWidth: 1200,
          // minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HomePage(),
          ),
        ),
        GoRoute(
          path: '/devices',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: DevicesPage(),
          ),
        ),
        GoRoute(
          path: '/automations',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: AutomationsPage(),
          ),
        ),
        GoRoute(
          path: '/activity',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const ActivityPage(),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SettingsPage(),
          ),
        ),
        GoRoute(
          path: '/feedback',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: FeedbackPage(),
          ),
        ),
        GoRoute(
          path: '/help',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HelpPage(),
          ),
        ),
        GoRoute(
          path: '/test',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: TestPage(),
          ),
        ),
      ],
    ),
  ],
);

int selectedIndex() {
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
  if (location.startsWith('/activity')) {
    return 3;
  }
  if (location.startsWith('/settings')) {
    return 4;
  }
  if (location.startsWith('/feedback')) {
    return 5;
  }
  if (location.startsWith('/help')) {
    return 6;
  }
  if (location.startsWith('/test')) {
    return 7;
  }
  return 0;
}

void onTap(BuildContext context, int index) {
  switch (index) {
    case 0:
      return context.push('/home');
    case 1:
      return context.push('/devices');
    case 2:
      return context.push('/automations');
    case 3:
      return context.push('/activity');
    case 4:
      return context.push('/settings');
    case 5:
      return context.push('/feedback');
    case 6:
      return context.push('/help');
    case 7:
      return context.push('/test');
    default:
      return context.push('/home');
  }
}
