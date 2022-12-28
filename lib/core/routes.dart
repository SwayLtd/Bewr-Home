import 'package:flutter/widgets.dart';
import 'package:smart_home_app/features/activity/activity.dart';
import 'package:smart_home_app/features/automations/automations.dart';
import 'package:smart_home_app/features/devices/devices.dart';
import 'package:smart_home_app/features/feedback/feedback.dart';
import 'package:smart_home_app/features/help/help.dart';
import 'package:smart_home_app/features/home/home.dart';
import 'package:smart_home_app/features/settings/settings.dart';
import 'package:smart_home_app/features/test/test.dart';

class Routes {
  static const String home = Home.routeName;
  static const String devices = Devices.routeName;
  static const String automations = Automations.routeName;
  static const String activity = Activity.routeName;
  static const String settings = Settings.routeName;
  static const String feedback= Feedback.routeName;
  static const String help = Help.routeName;
  static const String test = Test.routeName;

  static Map<String, WidgetBuilder> get routes {
    return {
       home: (context) => Home(),
       devices: (context) => Devices(),
       automations: (context) => Automations(),
       activity: (context) => Activity(),
       settings: (context) => Settings(),
       feedback: (context) => Feedback(),
       help: (context) => Help(),
      test: (context) => Test(),
    };
  }
}
