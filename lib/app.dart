import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/globals/settings/router/app_routes.dart';
import 'package:park_space/globals/theme/theme_helper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'globals/providers/app_state_provider.dart';
import 'globals/utils/navigator_service.dart';
import 'localization/app_localization.dart';

class App extends StatefulWidget {
  const App({Key? key, required this.prefs, required this.initRoute})
      : super(key: key);

  final SharedPreferences prefs;
  final String initRoute;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => AppStateProvider(prefs: widget.prefs)),
        // ProxyProvider<AppStateProvider, AppRouter>(
        //     update: (context, appStateProvider, _) =>
        //         AppRouter(appStateProvider: appStateProvider))
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(390, 844),
            builder: (context, child) {
              return MaterialApp(
                theme: theme,
                debugShowCheckedModeBanner: false,
                navigatorKey: NavigatorService.navigatorKey,
                localizationsDelegates: const [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale(
                    'en',
                    '',
                  ),
                ],
                initialRoute: widget.initRoute,
                routes: AppRoutes.routes,
              );
            },
          );
        },
      ),
    );
  }
}
