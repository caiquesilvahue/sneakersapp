import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 41, 147, 45),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 41, 147, 45),
          ),
        ),
      ),
    ),
  );
}
