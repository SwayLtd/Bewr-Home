// Next step:
// - make the widget staggered with different sizes
// Final name: Draggable Reorderable Staggered Quilted GridView

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';

class DraggableReorderableGridView extends StatefulWidget {
  final List<Widget> items;

  const DraggableReorderableGridView({
    required this.items,
  });
  
  @override
  _DraggableReorderableGridViewState createState() => _DraggableReorderableGridViewState();
}

class _DraggableReorderableGridViewState extends State<DraggableReorderableGridView> {
  late List<Widget> items;

  @override
  void initState() {
    super.initState();
    items = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    // Generate a grid of widgets that can be dragged and reordered
    return GridView.count(
      crossAxisCount: 2, // 2 columns
      children: List.generate(items.length, (index) {
        final item = items[index];
        return DragTarget<Widget>( // Widget that can receive a draggable widget
          onAccept: (Widget data) {
            setState(() {
              final int oldIndex = items.indexOf(data);
              items.removeAt(oldIndex);
              items.insert(index, data);
            });
          },
          builder: (context, accepted, rejected) {
            return LongPressDraggable<Widget>( // Widget that can be dragged
              data: item,
              feedback: ShakeWidget( // Widget that shakes when dragged
                shakeConstant: ShakeLittleConstant1(),
                autoPlay: true,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: item,
                ),
              ),
              childWhenDragging: Container( // Widget that is shown when the draggable widget is being dragged
                margin: const EdgeInsets.all(15),
                child: DottedBorder( // Widget that shows a dotted border
                  color: Colors.grey,
                  dashPattern: const [8, 4],
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(5),
                  child: Container(),
                ),
              ),
              child: item, // Widget that is shown when the draggable widget is not being dragged
            );
          },
        );
      }),
    );
  }
}
