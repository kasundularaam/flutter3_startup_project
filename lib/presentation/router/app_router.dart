import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/exceptions/route_exception.dart';
import '../../logic/language_cubit/language_cubit.dart';
import '../screens/auth/login_screen/login_page.dart';
import '../screens/auth/register_screen/register_page.dart';
import '../screens/home_screen/home_page.dart';
import '../screens/landing_screen/landing_page.dart';
import '../screens/settings_screen/settings_page.dart';

class AppRouter {
  static const String landingPage = '/';
  static const String homePage = '/homePage';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String settingsPage = '/settingsPage';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingPage:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (_) => RegisterPage(),
        );
      case settingsPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LanguageCubit(),
            child: const SettingsPage(),
          ),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
