import 'package:flutter/cupertino.dart';
import 'package:flutter_test_app/app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController(text:"abc");
  final passwordController = TextEditingController(text:"123");
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  RxBool obscureText = true.obs;


  @override
  void onInit() {

  }

  viewPassWord() => obscureText.value = !obscureText.value;

  String?  validatorEmail(String? value){
    if(value!.trim().isEmpty) {
      return "Please enter your email";
    }
    return null;
  }
  String?  validatorPassword(String? value){
    if(value!.trim().isEmpty) {
      return "Please enter your password";
    }
    return null;
  }


  void navigateToCategory() {
    if(loginFormKey.currentState!.validate()){
      Get.offAndToNamed(Routes.HOME);
    }
  }
}
