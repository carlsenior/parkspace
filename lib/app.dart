import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:parker/globals/providers/app_state_provider.dart';
import 'package:parker/globals/settings/router/app_router.dart';
import 'package:parker/globals/settings/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatefulWidget {
  const App({Key? key, required this.prefs}) : super(key: key);

  final SharedPreferences prefs;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
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
            theme: appThemeData,
          );
        },
      ),
    );
  }
}
