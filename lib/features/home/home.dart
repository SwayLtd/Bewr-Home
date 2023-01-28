import 'package:bewr_home/core/l10n.dart';
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
    // Example of a list of widgets that can be dragged and reordered in a grid
    final List<Widget> listOfWidgets = [
      Card(
        margin: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 78, 49, 47),
        child: Center(
          child: Text(context.loc.homeItem1),
        ),
      ),
      Card(
        margin: const EdgeInsets.all(10),
        color: Colors.green,
        child: Center(
          child: Text(context.loc.homeItem2),
        ),
      ),
      Card(
        margin: const EdgeInsets.all(10),
        color: Colors.blue,
        child: Center(
          child: Text(context.loc.homeItem3),
        ),
      ),
      Card(
        margin: const EdgeInsets.all(10),
        color: Colors.yellow,
        child: Center(
          child: Text(context.loc.homeItem4),
        ),
      ),
      Card(
        margin: const EdgeInsets.all(10),
        color: Colors.purple,
        child: Center(
          child: Text(context.loc.homeItem5),
        ),
      ),
      Card(
        margin: const EdgeInsets.all(10),
        color: Colors.orange,
        child: Center(
          child: Text(context.loc.homeItem6),
        ),
      ),
    ];

    return Scaffold(
      body: DraggableReorderableGridView( // Widget of a grid of widgets that can be dragged and reordered
        items: listOfWidgets,
      ),
    );
  }
}
