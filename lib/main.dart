//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

import 'package:flutter/material.dart';
import 'package:smart_home_app/core/app_theme.dart';
import 'package:smart_home_app/core/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bewr Home',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
