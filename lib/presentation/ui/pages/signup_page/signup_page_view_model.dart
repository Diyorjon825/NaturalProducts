import 'package:apps/presentation/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class SignupPageViewModel extends ChangeNotifier {
  void onSignupButtonTap(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      MainNavigationRouteNames.home,
      (route) => false,
    );
  }
}
