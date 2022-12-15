import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drag and Drop Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Drag and Drop Demo'),
        ),
        body: DragAndDropGrid(),
      ),
    );
  }
}

class DragAndDropGrid extends StatefulWidget {
  @override
  _DragAndDropGridState createState() => _DragAndDropGridState();
}

class _DragAndDropGridState extends State<DragAndDropGrid> {
  // Les coordonnées du widget draggé
  Offset _dragCoordinates = Offset.zero;

  // La liste de widgets dans notre grille
  List<Widget> _gridItems = [
    _DraggableGridItem(key: UniqueKey(), color: Colors.grey,),
    _DraggableGridItem(key: UniqueKey(), color: Colors.blue,),
    _DraggableGridItem(key: UniqueKey(), color: Colors.yellow,),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // La grille de widgets
        GridView.count(
          crossAxisCount: 3,
          children: _gridItems,
        ),

        // Le widget draggé s'il existe
        if (_dragCoordinates != null)
          Positioned(
            left: _dragCoordinates.dx,
            top: _dragCoordinates.dy,
            child: _DraggableGridItem(
              key: UniqueKey(),
              isDragging: true,
            ),
          ),
      ],
    );
  }
}

class _DraggableGridItem extends StatefulWidget {
  final bool isDragging;
  final Color color;

  const _DraggableGridItem({
    Key? key,
    this.isDragging = false,
    this.color = Colors.green,
  }) : super(key: key);

  _DraggableGridItem.withColor(this.color, {Key? key})
      : isDragging = false,
        super(key: key);

  @override
  __DraggableGridItemState createState() => __DraggableGridItemState();
}

class __DraggableGridItemState extends State<_DraggableGridItem> {
  // Les coordonnées du widget draggé
  Offset _dragCoordinates = Offset.zero;

  // Indique si on drag actuellement le widget ou non
  bool _isDragging = false;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      // Si le widget est actuellement draggé, on utilise les coordonnées
      // du drag en cours. Sinon, on utilise les coordonnées du dernier drag
      // effectué.
      data: _isDragging ? _dragCoordinates : _dragCoordinates,
      // Lorsqu'on arrête de drag le widget
  onDraggableCanceled: (Velocity velocity, Offset offset) {
    setState(() {
      // Met à jour les coordonnées du dernier drag effectué
      _dragCoordinates = offset;

      // On n'est plus en train de drag le widget
      _isDragging = false;
    });
  },
  // Lorsqu'on commence à drag le widget
  onDragStarted: () {
    setState(() {
      _isDragging = true;
    });
  },

  // Lorsqu'on termine de drag le widget
  onDragEnd: (details) {
    setState(() {
      // Met à jour les coordonnées du dernier drag effectué
      _dragCoordinates = details.offset;

      // On n'est plus en train de drag le widget
      _isDragging = false;
    });
  },

  // Le widget à afficher lors du drag
  feedback: Material(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
    child: SizedBox(
      width: 100,
      height: 100,
    ),
  ),

  // Le widget à afficher lorsque le drag est terminé
  child: Container(
    decoration: BoxDecoration(
      color: widget.color,
      borderRadius: BorderRadius.circular(10),
    ),
    width: 100,
    height: 100,
    margin: const EdgeInsets.all(20),
  ),
);
  }}