import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget appBar() {
   return PreferredSize(
    preferredSize: const Size.fromHeight(100),
      child: AppBar(
      // https://stackoverflow.com/questions/52489458/how-to-change-status-bar-color-in-flutter
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Status bar color

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: const Text('Bewr', style: TextStyle(color: Colors.black)),
      elevation: 0.5, // configure the separator line under the AppBar
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // Accédez aux paramètres utilisateur ici
            },
          ),
        ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Home',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
              TextButton(
                child: const Text(
                  'Devices',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
              TextButton(
                child: const Text(
                  'Automations',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
              TextButton(
                child: const Text(
                  'Activity',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
              TextButton(
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
              TextButton(
                child: const Text(
                  'Test',
                  style: TextStyle(
                    // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
                    color: Colors.grey,
                  ),
                ),
                onPressed: () {
                  // Navigator.pushReplacementNamed(context, Routes.home);
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

/*
Theme(
  data: Theme.of(context).copyWith(
    buttonTheme: const ButtonThemeData(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent, width: 0),
      ),
    ),
  ),
  child: Stack(
    children: [
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          height: 2,
          // color: _pageIndex == 0 ? Colors.blue : Colors.transparent,
          color: Colors.transparent,
        ),
      ),
      TextButton(
        child: const Text(
          'Home',
          style: TextStyle(
            // color: _pageIndex == 0 ? Colors.blue : Colors.grey,
            color: Colors.grey,
          ),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.home);
        },
      ),
    ],
  ),
),
*/
