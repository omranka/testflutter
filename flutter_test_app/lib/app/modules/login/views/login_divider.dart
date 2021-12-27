import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Row(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                child: const Divider(
                  color: Color(0xFFB4B4B4),
                  height: 50,
                )),
          ),
          Text(
            "Or",
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFFB4B4B4),
              ),
            ),
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                child: const Divider(
                  color: Color(0xFFB4B4B4),
                  height: 50,
                )),
          ),
        ]
    );
  }
}