import 'package:apps/presentation/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class IntroPageViewModel extends ChangeNotifier {
  void openSigninPage(BuildContext context) {
    Navigator.pushNamed(context, MainNavigationRouteNames.signin);
  }

  void openSignupPage(BuildContext context) {
    Navigator.pushNamed(context, MainNavigationRouteNames.signup);
  }
}
