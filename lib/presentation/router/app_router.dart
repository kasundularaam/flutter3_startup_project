import 'package:flutter/material.dart';
import '../../core/exceptions/route_exception.dart';
import '../screens/auth/login_screen/login_page.dart';
import '../screens/auth/register_screen/register_page.dart';
import '../screens/home_screen/home_page.dart';
import '../screens/landing_screen/landing_page.dart';

class AppRouter {
  static const String landingPage = '/';
  static const String homePage = '/homePage';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingPage:
        return MaterialPageRoute(
          builder: (_) => const LandingPage(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (_) => RegisterPage(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
