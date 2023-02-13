import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task 1',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 2),
                Text(
                  'Dec 10, 12:00',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Description 2',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Show more info about task 1', // TODO: localize
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Show more info about task 1'),
                );
                // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.info),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task 2',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 2),
                Text(
                  'Dec 10, 11:00',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Description 2',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Show more info about task 2', // TODO: localize
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Show more info about task 2'),
                );
                // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.check_circle),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Task 3',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 2),
                Text(
                  'Dec 10, 10:00',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Description 3',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Theme.of(context).textTheme.labelLarge?.fontSize,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Show more info about task 3', // TODO: localize
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Show more info about task 3'),
                );
                // Find the ScaffoldMessenger in the widget tree and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
        ],
      ),
    );
  }
}
