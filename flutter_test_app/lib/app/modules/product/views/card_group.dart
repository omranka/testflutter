import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/product/controllers/product_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';


class CardGroup extends StatelessWidget {
  const CardGroup({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);

  final ProductController controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(()=>InkWell(
      onTap: (){
        controller.selected.value=index;
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
              color:  controller.selected.value==index
                  ? const Color(0xFFCE3127)
              :Color(0xffEFEFEF),
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: Text(
            controller.listGroup.value[index].name,
            style: GoogleFonts.montserrat(
              textStyle:  TextStyle(
                fontSize: 18,
                letterSpacing: 0.2,
                fontWeight: FontWeight.w300,
                color:  controller.selected.value==index
                  ?Colors.white
                    :Color(0xFFB4B4B4),
              ),
            ),
          )
      ),
    )
    );
  }
}