import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(
            "Don't have account? ",
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "Sign Up",
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color:Color(0xFFA71B12),
              ),
            ),
          )
        ],
      ),
    );
  }
}