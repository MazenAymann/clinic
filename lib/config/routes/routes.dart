import 'package:clinic/core/auth/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';

import '../../core/onboarding/screens/onboarding.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() => <String, WidgetBuilder>{
        OnBoardingPage.routeName: (context) => const OnBoardingPage(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      };
}
