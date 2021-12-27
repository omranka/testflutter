import 'package:flutter/material.dart';

class LoginIcons extends StatelessWidget {
  const LoginIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/logo/facebook.png",
              width: 40,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/logo/google.png",
              width: 40,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/logo/apple.png",
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}