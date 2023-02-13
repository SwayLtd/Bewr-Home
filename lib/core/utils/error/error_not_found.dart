import 'package:bewr_home/core/constants/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotFoundError extends StatelessWidget {
  const NotFoundError(this.error, {super.key});
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              style: const TextStyle(color: Colors.white),
              error.toString(),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              autofocus: true,
              onPressed: () => context.go('/'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white, width: 1.5),
              ),
              child: Text(context.loc.routesNameHome),
            )
          ],
        ),
      ),
    );
  }
}
