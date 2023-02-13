import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bewr_home/core/constants/app_theme.dart';
import 'package:bewr_home/core/constants/l10n.dart';
import 'package:bewr_home/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy(); // Remove # from URL
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BewrHome());
}

class BewrHome extends StatelessWidget {
  const BewrHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp.router(
        debugShowCheckedModeBanner: false, // Remove debug banner
        onGenerateTitle: (BuildContext context) => context.loc.title,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
