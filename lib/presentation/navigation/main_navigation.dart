import 'package:apps/domain/factory/screen_factory.dart';
import 'package:flutter/material.dart';

class MainNavigation {
  static final screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loader: (context) =>
        screenFactory.buildLoaderPage(),
    MainNavigationRouteNames.introPage: (context) =>
        screenFactory.buildIntroPage(),
    MainNavigationRouteNames.signin: (context) =>
        screenFactory.buildSigninPage(),
    MainNavigationRouteNames.signup: (context) =>
        screenFactory.buildSignupPage(),
    MainNavigationRouteNames.home: (context) => screenFactory.buildMainPage(),
  };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
    }
    return null;
  }
}

abstract class MainNavigationRouteNames {
  static const introPage = "/intro";
  static const loader = "/";
  static const signin = "/intro/signin";
  static const signup = "/intro/signup";
  static const home = "/home";
}
