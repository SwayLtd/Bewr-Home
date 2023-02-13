import 'package:bewr_home/core/constants/l10n.dart';
import 'package:flutter/material.dart';

class AutomationsScreen extends StatelessWidget {
  const AutomationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              context.loc.routineCategoryDaily,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoutineTile(
            title: context.loc.routineTitleWakeup,
            description: context.loc.routineDescriptionWakeup,
            icon: Icons.alarm,
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Launch the wakeup routine here'),
              );
              // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          RoutineTile(
            title: context.loc.routineTitleLeaving,
            description: context.loc.routineDescriptionLeaving,
            icon: Icons.commute,
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Launch the leaving routine here'),
              );
              // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              context.loc.routineCategoryEvening,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoutineTile(
            title: context.loc.routineTitleFilm,
            description: context.loc.routineDescriptionFilm,
            icon: Icons.movie,
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Launch the film routine here'),
              );
              // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          RoutineTile(
            title: context.loc.routineTitleDinner,
            description: context.loc.routineDescriptionDinner,
            icon: Icons.restaurant,
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Launch the dinner routine here'),
              );
              // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: context.loc.routineCreate,
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('Open the routine creation screen here'),
          );
          // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class RoutineTile extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  const RoutineTile({
    required this.title,
    required this.description,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      leading: Icon(icon),
      trailing: InkWell(
        onTap: onPressed,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
