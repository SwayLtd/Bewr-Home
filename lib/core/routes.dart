// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart

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

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return ScaffoldWithNavBar(child: child);
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
