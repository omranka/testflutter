import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/home/views/button_text.dart';
import 'package:flutter_test_app/app/modules/home/views/card_category.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => controller.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFA71B12),
              ),
            )
          : Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Choose your favorite fashion categories",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000900),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("You can choose more than one",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                CardCategory(controller:controller),
                ButtonText(controller:controller),
              ],
            ),
    ));
  }
}
