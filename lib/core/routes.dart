import 'package:go_router/go_router.dart';
import 'package:smart_home_app/features/activity/activity.dart';
import 'package:smart_home_app/features/automations/automations.dart';
import 'package:smart_home_app/features/devices/devices.dart';
import 'package:smart_home_app/features/feedback/feedback.dart';
import 'package:smart_home_app/features/help/help.dart';
import 'package:smart_home_app/features/home/home.dart';
import 'package:smart_home_app/features/settings/settings.dart';
import 'package:smart_home_app/features/test/test.dart';

final homeRoute = GoRoute(
  name: 'home',
  path: '/',
  builder: (context, state) => Home(),
);

final devicesRoute = GoRoute(
  name: 'devices',
  path: '/devices',
  builder: (context, state) => Devices(),
);

final automationsRoute = GoRoute(
  name: 'automations',
  path: '/automations',
  builder: (context, state) => Automations(),
);

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
  builder: (context, state) => Feedback(),
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

GoRouter router = GoRouter(
  routes: [
    homeRoute,
    devicesRoute,
    automationsRoute,
    activityRoute,
    settingsRoute,
    feedbackRoute,
    helpRoute,
    testRoute,
  ],
);
