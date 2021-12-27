import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/home/controllers/home_controller.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid/responsive_grid.dart';


class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return  ResponsiveGridCol(
      child:ResponsiveGridRow(
        children: [
          for (int index = 0; index < controller.listGategory.length; index++)
            ResponsiveGridCol(
              xs: 6,
              child: Obx(()=>InkWell(
                onTap: () {
                  controller.listGategory.value[index].selected =
                  !controller.listGategory.value[index].selected;
                  controller.listGategory.value = [...controller.listGategory.value];
                },
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color:
                        controller.listGategory.value[index].selected
                            ? const Color(0xFFCE3127)
                            : Colors.white,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(40.0)),
                        border: Border.all(color: controller.listGategory.value[index].selected
                            ?Colors.white
                            :const Color(0xffEFEFEF),),
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                controller.listGategory.value[index].image,
                                width: 25,
                                height: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                controller.listGategory.value[index].name,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  textStyle:  TextStyle(
                                    fontSize: 14,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                    color: controller.listGategory.value[index].selected
                                        ?Colors.white
                                        :Colors.black87,
                                  ),
                                ),
                              ),
                            )
                          ]
                      ),
                    )
                ),
              )
              ),
            )
        ],
      ),
    );
  }
}