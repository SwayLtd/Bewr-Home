import 'package:bewr_home/core/localizations.dart';
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
            title: 'Réveil',
            description: 'Allume les lumières et lance la musique',
            icon: Icons.alarm,
            onPressed: () {
              // Lancer la routine de réveil ici
            },
          ),
          RoutineTile(
            title: 'Départ',
            description: 'Eteint les lumières et met en veille la télévision',
            icon: Icons.commute,
            onPressed: () {
              // Lancer la routine de départ ici
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 8, left: 8),
            child: Text(
              'Soirée',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          RoutineTile(
            title: 'Film',
            description: 'Allume la télévision et la barre de son',
            icon: Icons.movie,
            onPressed: () {
              // Lancer la routine de film ici
            },
          ),
          RoutineTile(
            title: 'Dîner',
            description: 'Allume les lumières de la cuisine et lance de la musique',
            icon: Icons.restaurant,
            onPressed: () {
              // Lancer la routine de dîner ici
            },
          ),
          // Ajoutez autant de routines et de catégories que nécessaire ici
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ouvrez la page de création de routine ici
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
