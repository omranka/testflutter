import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/login/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Email",
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: controller.emailController,
                    validator: controller.validatorEmail,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Color(0xffEFEFEF),
                            width: 3,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Color(0xffEFEFEF),
                            width: 3,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Color(0xffEFEFEF),
                            width: 3,
                          )),
                      hintText: "",
                      filled: true,
                      fillColor: Color(0xffEFEFEF),
                    ),
                    cursorColor: const Color(0xFFB4B4B4),
                  ),
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Password",
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                  () => TextFormField(
                    controller: controller.passwordController,
                    validator: controller.validatorPassword,
                    obscureText: controller.obscureText.value,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                              width: 3,
                            )),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                              width: 3,
                            )),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              color: Color(0xffEFEFEF),
                              width: 3,
                            )),
                        filled: true,
                        fillColor: const Color(0xffEFEFEF),
                        suffixIcon: IconButton(
                              onPressed: () {
                                controller.viewPassWord();
                              },
                              icon: controller.obscureText.value
                                  ? const Icon(Icons.visibility_off)
                                  : const Icon(Icons.visibility),
                            color: const Color(0xFFB4B4B4),
                          ),
                        ),
                    cursorColor: const Color(0xFFB4B4B4),
                  ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Get.theme.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
                onPressed: controller.navigateToCategory,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
