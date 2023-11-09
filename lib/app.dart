import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'globals/providers/app_state_provider.dart';
import 'globals/settings/router/app_router.dart';
import 'globals/settings/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({Key? key, required this.prefs}) : super(key: key);

  final SharedPreferences prefs;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppStateProvider()),
        ProxyProvider<AppStateProvider, AppRouter>(
            update: (context, appStateProvider, _) =>
                AppRouter(appStateProvider: appStateProvider))
      ],
      child: Builder(
        builder: (context) {
          GoRouter router = Provider.of<AppRouter>(context).router;
          return MaterialApp.router(
            routerConfig: router,
            theme: appTheme.appThemeData(),
          );
        },
      ),
    );
  }
}
