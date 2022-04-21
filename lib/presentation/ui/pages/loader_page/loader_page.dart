import 'package:apps/presentation/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text("openIntroPage"),
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            MainNavigationRouteNames.introPage,
          );
        },
      )),
    );
  }
}
