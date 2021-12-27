import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  MaterialColor color(Color color) {
    return MaterialColor(color.value, {
      50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
      100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
      200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
      300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
      400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
      500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
      600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
      700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
      800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
      900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
    });
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: color(const Color(0xFFA71B12)),
        scaffoldBackgroundColor: color(Colors.white),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: color(const Color(0xFFA71B12)),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
    ),
  );
}
