import 'package:flutter/material.dart';
import 'package:smart_home_app/features/home/widgets/draggablereorderablegridview.dart';
import 'package:smart_home_app/main.dart';

class Home extends StatefulWidget {
  static const String routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MyApp(
      body: DraggableReorderableGridView(items: listOfWidgets,),
    );
  }
}

final List<Widget> listOfWidgets = [
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.red,
    child: Center(
      child: Text('Item 1'),
    ),
  ),
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.green,
    child: Center(
      child: Text('Item 2'),
    ),
  ),
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.blue,
    child: Center(
      child: Text('Item 3'),
    ),
  ),
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.yellow,
    child: Center(
      child: Text('Item 4'),
    ),
  ),
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.purple,
    child: Center(
      child: Text('Item 5'),
    ),
  ),
  const Card(
    margin: EdgeInsets.all(10),
    color: Colors.orange,
    child: Center(
      child: Text('Item 6'),
    ),
  ),
];