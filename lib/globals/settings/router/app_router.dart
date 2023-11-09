import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../screens/home/home_screen.dart';
import '../../../screens/onboard/onboard_screen.dart';
import '../../constants/constants.dart';
import '../../providers/app_state_provider.dart';
import 'router_util.dart';

class AppRouter {
  AppRouter({required this.appStateProvider});

  final AppStateProvider appStateProvider;

  get router => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: APP_PAGE.onboard.routePath,
              name: APP_PAGE.onboard.routeName,
              builder: ((context, state) => const OnBoardScreen())),
          GoRoute(
              path: APP_PAGE.home.routePath,
              name: APP_PAGE.home.routeName,
              builder: ((context, state) => const HomeScreen())),
        ],
        redirect: (context, state) async {
          String onboardPath = state.namedLocation(APP_PAGE.onboard.routeName);
          SharedPreferences prefs = await SharedPreferences.getInstance();
          bool? isOnBoarded = prefs.getBool(CONSTANTS.onboarded.name);
          if (isOnBoarded == null || !isOnBoarded) {
            return onboardPath;
          }
          return null;
        },
      );
}
