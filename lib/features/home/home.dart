import 'package:bewr_home/features/home/widgets/draggablereorderablegridview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
