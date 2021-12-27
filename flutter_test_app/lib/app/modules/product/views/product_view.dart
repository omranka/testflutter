import 'package:flutter/material.dart';
import 'package:flutter_test_app/app/data/models/product_model.dart';
import 'package:flutter_test_app/app/modules/product/views/card_product.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import 'bottom_navigation.dart';
import 'card_group.dart';

class ProductView extends GetView<ProductController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      flexibleSpace:  Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child:
                TextFormField(
                  controller: TextEditingController(),
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
                    filled: true,
                    fillColor: Color(0xffEFEFEF),
                    hintText: "Find your product",
                    prefixIcon:  Icon(Icons.search, color: Color(0xFFB4B4B4),),
                  ),
                  cursorColor: const Color(0xFFB4B4B4),
                ),
            ),
            const SizedBox(width: 20,),
            Container(
                height: 60,
                width: 60,

                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(const Radius.circular(20))
                ),
                child: const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.notifications_none_rounded, color: Color(0xFFB4B4B4),)
                )
            )
          ],
        ),
      ),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(()=>Padding(
              padding: const EdgeInsets.only( left: 16),
              child: SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: controller.listGroup.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CardGroup(controller: controller,index: index,),
                    );
                  },
                ),
              ),
            ),
            ),
            Obx(() => controller.isLoading.value
                ? const Center(
              child: CircularProgressIndicator(
                color: Color(0xFFA71B12),
              ),
            )
                :Padding(
              padding: const EdgeInsets.only( left: 16),
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 130/200,

                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(controller.listProduct.length,(index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CardProduct(controller:controller, index: index,),
                  );
                }),
              ),
            )
            )
          ],
        ),
      ),
        floatingActionButton: SizedBox(
          height: 75,
          width: 75,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFFCE3127),
            child: Image.asset("assets/images/other/scan.png", height: 30, width: 30,),
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          notchMargin: 15,
          child: Container(
            height: 70,
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    BottomNavigation(
                      icon: Icons.home,
                      color: Color(0xFFCE3127),
                    ),
                    BottomNavigation(
                      icon: Icons.local_grocery_store_rounded,
                      color: Color(0xFFB4B4B4),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    BottomNavigation(
                      icon: Icons.favorite,
                      color: Color(0xFFB4B4B4),
                    ),
                    BottomNavigation(
                      icon: Icons.person_rounded,
                      color: Color(0xFFB4B4B4),
                    ),
                  ],
                )

              ],
            ),
          ),
        )
    );
  }
}
