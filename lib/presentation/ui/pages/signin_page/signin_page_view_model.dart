import 'package:apps/presentation/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class SigninPageViewModel extends ChangeNotifier {
  void onSigninButtonTap(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      MainNavigationRouteNames.home,
      (route) => false,
    );
  }
}
