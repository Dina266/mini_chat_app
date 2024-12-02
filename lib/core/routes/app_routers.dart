import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_chat_app/features/auth/presentation/view/login_view.dart';
import 'package:mini_chat_app/features/auth/presentation/view/signup_view.dart';
import 'package:mini_chat_app/features/profile/presentation/views/profile_view.dart';

import '../../features/auth/presentation/view_model/cubit/auth_cubit.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/splash/presentation/views/splash.dart';
import 'routing.dart';

class AppRouters {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routing.init:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routing.signUp:
        return MaterialPageRoute(
            builder:
            (_) =>
            BlocProvider(
                  create: (context) => AuthCubit(),
                  child:
                   const SignUpView(),
                )
                );
      case Routing.login:
        return MaterialPageRoute(
            builder: (_) => 
            BlocProvider(
                  create: (context) => AuthCubit(),
                  child: 
                  const LoginView(),
                )
                );
      case Routing.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routing.profile:
        return MaterialPageRoute(builder: (_) => const ProfileView());

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
