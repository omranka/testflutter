import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/home/controllers/home_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';


class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              child: const Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFCE3127),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: controller.navigateToProduct,

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("Skip for now",
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
      ],
    );
  }
}