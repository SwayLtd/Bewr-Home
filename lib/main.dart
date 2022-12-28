//SQLite pour stocker des données en local
//Firebase pour stocker des données à grande échelle ou de synchroniser des données entre plusieurs appareils

import 'package:flutter/material.dart';
import 'package:smart_home_app/core/app_theme.dart';
import 'package:smart_home_app/core/routes.dart';
import 'package:smart_home_app/core/widgets/appbar.dart';
import 'package:smart_home_app/core/widgets/drawer.dart';
import 'package:smart_home_app/features/home/home.dart';

void main() {
  runApp(
    // Need to be cleaned
    MaterialApp(
      routes: Routes.routes,
      initialRoute: Routes.home,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      title: 'Pryve Home',
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  //final List<Widget> _pages = ["Home()", Devices(), Automations(), Activity(), Settings(), Feedback(), Help(), Test()];
  final Widget body;

  MyApp({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // https://stackoverflow.com/questions/50471025/flutter-align-button-to-bottom-of-drawer
      drawer: createDrawer(context),
      body: const Center(
        child: Text('Welcome to my app'),
      ),
    );
  }
}
