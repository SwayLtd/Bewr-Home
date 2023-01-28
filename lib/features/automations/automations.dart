import 'package:bewr_home/core/l10n.dart';
import 'package:flutter/material.dart';

class AutomationsPage extends StatelessWidget {
  const AutomationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              context.loc.daily,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoutineTile(
            title: 'Réveil', // TODO: Localize
            description: 'Allume les lumières et lance la musique', // TODO: Localize
            icon: Icons.alarm,
            onPressed: () {
              // Launch the wake up routine here
            },
          ),
          RoutineTile(
            title: 'Départ', // TODO: Localize
            description: 'Eteint les lumières et met en veille la télévision', // TODO: Localize
            icon: Icons.commute,
            onPressed: () {
              // Launch the departure routine here
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              'Soirée', // TODO: Localize
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoutineTile(
            title: 'Film', // TODO: Localize
            description: 'Allume la télévision et la barre de son', // TODO: Localize
            icon: Icons.movie,
            onPressed: () {
              // Launch the movie routine here
            },
          ),
          RoutineTile(
            title: 'Dîner', // TODO: Localize
            description: 'Allume les lumières de la cuisine et lance de la musique', // TODO: Localize
            icon: Icons.restaurant,
            onPressed: () {
              // Launch the dinner routine here
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open the automation creation page here
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
