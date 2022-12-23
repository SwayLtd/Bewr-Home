// New step, make the widget staggered with different sizes
// Final name: Draggable Reorderable Staggered GridView

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DraggableReorderableGridView extends StatefulWidget {
  final List<Widget> items;

  DraggableReorderableGridView({
    required this.items,
  });
  
  @override
  _DraggableReorderableGridViewState createState() => _DraggableReorderableGridViewState(items: items);
}

class _DraggableReorderableGridViewState extends State<DraggableReorderableGridView> {
  final List<Widget> items;

  _DraggableReorderableGridViewState({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          final item = items[index];
          return DragTarget<Widget>(
            onAccept: (Widget data) {
              setState(() {
                final int oldIndex = items.indexOf(data);
                items.removeAt(oldIndex);
                items.insert(index, data);
              });
            },
            builder: (context, accepted, rejected) {
              return LongPressDraggable<Widget>(
                data: item,
                child: item,
                feedback: Container(
                  width: 200,
                  height: 200,
                  child: item,
                ),
                childWhenDragging: Container(
                  margin: EdgeInsets.all(15),
                  child: DottedBorder(
                    color: Colors.grey,
                    dashPattern: [12, 8],
                    strokeWidth: 2,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(5),
                    child: Container(),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}