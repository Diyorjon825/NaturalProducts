import 'package:apps/presentation/ui/pages/intro_page/intro_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<IntroPageViewModel>();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_image.png",
            fit: BoxFit.contain,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Image.asset("assets/images/icon.png"),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: FittedBox(
                      child: Text(
                        "Natural Products",
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    child: FittedBox(
                      child: Text(
                        "ilovasiga Xush Kelibsiz",
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 67,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context)
                            .floatingActionButtonTheme
                            .backgroundColor!,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: TextButton(
                      onPressed: () => model.openSigninPage(context),
                      child: const Text(
                        "Tizimga kirish",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () => model.openSignupPage(context),
                      child: const Text("Ro'yhatdan o'tish"),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
