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
    return GridView.count(
      crossAxisCount: 2,
      // crossAxisSpacing: 0,
      // mainAxisSpacing: 0,
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
              feedback: ShakeWidget(
                shakeConstant: ShakeLittleConstant1(),
                autoPlay: true,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: item,
                ),
              ),
              childWhenDragging: Container(
                margin: const EdgeInsets.all(15),
                child: DottedBorder(
                  color: Colors.grey,
                  dashPattern: const [12, 8],
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(5),
                  child: Container(),
                ),
              ),
              child: item,
            );
          },
        );
      }),
    );
  }
}
