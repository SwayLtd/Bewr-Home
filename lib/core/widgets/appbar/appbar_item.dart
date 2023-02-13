import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatefulWidget {
  final String title;
  final int index;

  const AppBarItem({
    super.key,
    required this.title,
    required this.index,
  });

  @override
  _AppBarItemState createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  @override
  Widget build(BuildContext context) {
    final int index = widget.index;
    final String title = widget.title;

    return Theme(
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
            // This is the bottom line that will be displayed when the button is selected
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 2,
              // Depending on the selected index, set the color of the bottom menu
              color: selectedIndex() == index
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
            ),
          ),
          TextButton(
            child: Text(
              title,
              style: TextStyle(
                // Depending on the selected index, set the color of the text
                color: selectedIndex() == index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
            onPressed: () {
              onTap(context, index);
            },
          ),
        ],
      ),
    );
  }
}
