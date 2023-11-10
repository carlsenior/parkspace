// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../screens/home/home_screen.dart';
// import '../../../screens/onboard/onboard_screen.dart';
// import '../../constants/constants.dart';
// import '../../providers/app_state_provider.dart';
// import 'router_util.dart';

// class AppRouter {
//   AppRouter({required this.appStateProvider});

//   final AppStateProvider appStateProvider;

//   get router => GoRouter(
//         initialLocation: '/',
//         routes: [
//           GoRoute(
//               path: APP_PAGE.onboard.routePath,
//               name: APP_PAGE.onboard.routeName,
//               pageBuilder: (context, state) => goHomeScaleTransition(
//                   context: context,
//                   state: state,
//                   child: const OnBoardScreen())),
//           GoRoute(
//               path: APP_PAGE.home.routePath,
//               name: APP_PAGE.home.routeName,
//               // builder: ((context, state) => const HomeScreen())),
//               pageBuilder: (context, state) => goHomeScaleTransition(
//                   context: context, state: state, child: const HomeScreen()))
//         ],
//         redirect: (context, state) async {
//           String onboardPath = state.namedLocation(APP_PAGE.onboard.routeName);
//           SharedPreferences prefs = await SharedPreferences.getInstance();
//           bool? isOnBoarded = prefs.getBool(CONSTANTS().onboardedKey);
//           if (isOnBoarded == null || !isOnBoarded) {
//             return onboardPath;
//           }
//           return null;
//         },
//       );
// }

// CustomTransitionPage goHomeScaleTransition<T>({
//   required BuildContext context,
//   required GoRouterState state,
//   required Widget child,
// }) {
//   return CustomTransitionPage<T>(
//     key: state.pageKey,
//     transitionDuration: const Duration(milliseconds: 3000),
//     child: child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
//         FadeTransition(opacity: animation, child: child),
//   );
// }
