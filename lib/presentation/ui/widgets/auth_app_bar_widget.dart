import 'package:flutter/material.dart';

class AuthAppBarWidget extends StatelessWidget {
  const AuthAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 75,
              width: 75,
              child: Image.asset("assets/images/icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
