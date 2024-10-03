import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/auth/view/signup_view.dart';

import '../../features/splash/views/splash.dart';
import 'routing.dart';

class AppRouters {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.init:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routing.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}