import 'package:apps/presentation/ui/pages/signin_page/signin_page_view_model.dart';
import 'package:apps/presentation/ui/widgets/auth_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_image.png"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.5),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: mq.padding.top),
                  const AuthAppBarWidget(),
                  // const SizedBox(height: 50),
                  const Expanded(child: _BodyWidget())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<SigninPageViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Tizimga kirish",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
            ),
          ),
          const Text(
            "Elektron pochtangiz va parolingizni kiriting",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            "Elektron pochta",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 20,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            "Parol",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 20,
            ),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Parolni unutdingizmi?",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            height: 67,
            child: ElevatedButton(
              onPressed: () => model.onSigninButtonTap(context),
              child: const Text("Ro'yhatdan o'tish"),
            ),
          ),
        ],
      ),
    );
  }
}
