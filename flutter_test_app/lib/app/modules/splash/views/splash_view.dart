import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Get.theme.primaryColor,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Zeta-Box",
                style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                backgroundImage: AssetImage('assets/images/logo/logo.png'),
              )
            ],
          ),
        ),
      ),
    );
  }


}
