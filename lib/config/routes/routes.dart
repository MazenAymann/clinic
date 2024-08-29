import 'package:clinic/core/auth/login/presentation/login_screen.dart';
import 'package:clinic/core/auth/register/presentation/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/onboarding/screens/onboarding.dart';

// class Routes {
//   static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
//         OnBoardingPage.routeName: (context) => const OnBoardingPage(),
//         LoginScreen.routeName: (context) => const LoginScreen(),
//       };
// }

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: OnBoardingPage.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingPage();
      },
    ),
    GoRoute(
      path: LoginScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: RegisterScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
  ],
);
