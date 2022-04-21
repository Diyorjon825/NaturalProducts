import 'package:apps/presentation/ui/pages/home_page/home_page.dart';
import 'package:apps/presentation/ui/pages/home_page/home_page_view_model.dart';
import 'package:apps/presentation/ui/pages/main_page/main_page.dart';
import 'package:apps/presentation/ui/pages/main_page/main_page_view_model.dart';
import 'package:apps/presentation/ui/pages/intro_page/intro_page.dart';
import 'package:apps/presentation/ui/pages/intro_page/intro_page_view_model.dart';
import 'package:apps/presentation/ui/pages/loader_page/loader_page.dart';
import 'package:apps/presentation/ui/pages/loader_page/loader_page_view_model.dart';
import 'package:apps/presentation/ui/pages/signin_page/signin_page.dart';
import 'package:apps/presentation/ui/pages/signin_page/signin_page_view_model.dart';
import 'package:apps/presentation/ui/pages/signup_page/signup_page.dart';
import 'package:apps/presentation/ui/pages/signup_page/signup_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  Widget buildIntroPage() {
    return ChangeNotifierProvider(
      create: (context) => IntroPageViewModel(),
      child: const IntroPage(),
    );
  }

  Widget buildLoaderPage() {
    return ChangeNotifierProvider(
      create: (context) => LoaderPageViewModel(),
      child: const LoaderPage(),
    );
  }

  Widget buildSigninPage() {
    return ChangeNotifierProvider(
      create: (context) => SigninPageViewModel(),
      child: const SigninPage(),
    );
  }

  Widget buildSignupPage() {
    return ChangeNotifierProvider(
      create: (context) => SignupPageViewModel(),
      child: const SignupPage(),
    );
  }

  Widget buildMainPage() {
    return ChangeNotifierProvider(
      create: (context) => MainPageViewModel(),
      child: const MainPage(),
    );
  }

  Widget buildHomePage() {
    return ChangeNotifierProvider(
      create: (context) => HomePageViewModel(),
      child: const HomePage(),
    );
  }
}
