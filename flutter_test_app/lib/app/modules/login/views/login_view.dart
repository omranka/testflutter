import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/login/views/login_divider.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';
import 'login_form.dart';
import 'login_icons.dart';
import 'login_sign_up.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child:CircleAvatar(
                  backgroundColor: Color(0xFFB4B4B4),
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/logo/logo.png'),
                )
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login to Zeta-Box",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SignUp(),
              const LoginIcons(),
              const LoginDivider(),
              LoginForm(controller: controller,)
            ],
          ),
        ),
      ),
    );
  }
}
