// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home_app/core/widgets/navbar.dart';
import 'package:smart_home_app/features/activity/activity.dart';
import 'package:smart_home_app/features/automations/automations.dart';
import 'package:smart_home_app/features/devices/devices.dart';
import 'package:smart_home_app/features/feedback/feedback.dart' as feedback;
import 'package:smart_home_app/features/help/help.dart';
import 'package:smart_home_app/features/home/home.dart';
import 'package:smart_home_app/features/settings/settings.dart';
import 'package:smart_home_app/features/test/test.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final activityRoute = GoRoute(
  name: 'activity',
  path: '/activity',
  builder: (context, state) => Activity(),
);

final settingsRoute = GoRoute(
  name: 'settings',
  path: '/settings',
  builder: (context, state) => Settings(),
);

final feedbackRoute = GoRoute(
  name: 'feedback',
  path: '/feedback',
  builder: (context, state) => feedback.Feedback(),
);

final helpRoute = GoRoute(
  name: 'help',
  path: '/help',
  builder: (context, state) => Help(),
);

final testRoute = GoRoute(
  name: 'test',
  path: '/test',
  builder: (context, state) => Test(),
);

final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: <RouteBase>[
      /// Application shell
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          /// The first screen to display in the bottom navigation bar.
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return Home();
            },
            /*routes: <RouteBase>[
              // The details screen to display stacked on the inner Navigator.
              // This will cover screen A but not the application shell.
              GoRoute(
                path: 'details',
                builder: (BuildContext context, GoRouterState state) {
                  // return const DetailsScreen(label: 'A');
                },
              ),
            ],*/
          ),

          /// Displayed when the second item in the the bottom navigation bar is
          /// selected.
          GoRoute(
            path: '/devices',
            builder: (BuildContext context, GoRouterState state) {
              return Devices();
            },
          ),

          /// The third screen to display in the bottom navigation bar.
          GoRoute(
            path: '/automations',
            builder: (BuildContext context, GoRouterState state) {
              return Automations();
            },
          ),
        ],
      ),
    ],
  );
