//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home_app/core/app_theme.dart';
import 'package:smart_home_app/core/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Bewr Home',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/shell_route.dart
      home: GoRouter(
        initialRoute: homeRoute,
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
        child: Scaffold(
          body: GoRouter.body,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: GoRouter.of(context).routeIndex,
            onTap: (index) {
              switch (index) {
                case 0:
                  context.go(homeRoute.path);
                  break;
                case 1:
                  context.go(devicesRoute.path);
                  break;
                case 2:
                  context.go(automationsRoute.path);
                  break;
                case 3:
                  context.go(activityRoute.path);
                  break;
                case 4:
                  context.go(settingsRoute.path);
                  break;
                case 5:
                  context.go(feedbackRoute.path);
                  break;
                case 6:
                  context.go(helpRoute.path);
                  break;
                case 7:
                  context.go(testRoute.path);
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.devices),
                label: 'Devices',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.autorenew),
                label: 'Automations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feedback),
                label: 'Feedback',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.help),
                label: 'Help',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.toll_outlined),
                label: 'Test',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
