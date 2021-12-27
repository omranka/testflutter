import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/modules/product/controllers/product_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';


class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required  this.controller,
    required  this.index,
  }) : super(key: key);
  final ProductController controller;
  final int index;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: index.isEven ? const EdgeInsets.only(left: 24, top: 8, bottom: 0) : const EdgeInsets.only(right: 24, top: 8, bottom: 0),
        width: 150,
        child: Column(
          children: [
            if(!index.isEven)
              const SizedBox(height: 20,),
            Hero(
              tag: "tag$index",
              child: Material(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Stack(
                    children: [
                      Image.asset(
                          controller.listProduct.value[index].image,
                          width: 160,
                          height: 200,
                          fit:BoxFit.cover
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(20))
                          ),
                          child: Obx(()=> IconButton(
                            padding: EdgeInsets.zero,
                            icon: Center(
                              child: Icon(Icons.favorite, color: controller.listProduct.value[index].selected ? Colors.red : Color(0xFFB4B4B4), size: 18,),
                            ), onPressed: () {
                            controller.listProduct[index].selected =
                            !controller.listProduct[index].selected;
                            controller.listProduct.value = [...controller.listProduct.value];
                          },
                          ),
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 12, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(controller.listProduct.value[index].name, style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),),
                  const SizedBox(height: 6,),
                  Text("\$"+controller.listProduct.value[index].price.toStringAsFixed(3), style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color:  Color(0xFFCE3127),
                    ),
                  ),),
                ],
              ),
            ),
          ],
        )
    );
  }
}