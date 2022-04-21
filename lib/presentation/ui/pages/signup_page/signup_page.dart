import 'package:apps/presentation/ui/pages/signup_page/signup_page_view_model.dart';
import 'package:apps/presentation/ui/widgets/auth_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xCFE7E7E7),
                    Color(0xCFE7E7E7),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: mq.padding.top),
                  const AuthAppBarWidget(),
                  const Expanded(child: _BodyWidget()),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text(
            "Ro'yhatdan o'tish",
            style: TextStyle(fontSize: 26, color: Colors.black),
          ),
          Text(
            "Davom etish uchun maʼlumotlarni kiriting",
            style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
          ),
          SizedBox(height: 40),
          _UsernameWidget(),
          SizedBox(height: 30),
          _EmailWidget(),
          SizedBox(height: 30),
          _PasswordWidget(),
          SizedBox(height: 30),
          Text(
            "Davom etish orqali siz Xizmat shartlari va Maxfiylik siyosatimizga rozilik bildirasiz.",
            style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
          ),
          SizedBox(height: 20),
          _SubmitButton(),
        ],
      ),
    );
  }
}

class _UsernameWidget extends StatelessWidget {
  const _UsernameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Foydalanuvchi nomi",
          style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF7C7C7C)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF7C7C7C)),
            ),
          ),
        ),
      ],
    );
  }
}

class _EmailWidget extends StatelessWidget {
  const _EmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Elektron pochta",
          style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF7C7C7C)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF7C7C7C)),
            ),
          ),
        ),
      ],
    );
  }
}

class _PasswordWidget extends StatefulWidget {
  const _PasswordWidget({Key? key}) : super(key: key);

  @override
  State<_PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<_PasswordWidget> {
  bool isObscure = true;

  void _toggle() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Parol",
          style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                obscureText: isObscure,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  suffix: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: _toggle,
                      icon: isObscure
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF7C7C7C)),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF7C7C7C)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<SignupPageViewModel>();
    return SizedBox(
      height: 67,
      child: ElevatedButton(
        onPressed: () => model.onSignupButtonTap(context),
        child: const Text("Ro'yhatdan o'tish"),
      ),
    );
  }
}
