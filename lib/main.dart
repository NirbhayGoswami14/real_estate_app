import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';


final  colorScheme=ColorScheme.fromSeed(seedColor:Colors.indigo,brightness: Brightness.light  );
void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:AppPages.INITIAL,
    getPages: AppPages.routes,
    themeMode: ThemeMode.system,
    theme: ThemeData(
        colorScheme: colorScheme,
        fontFamily: "Poppins"
   ),

  ));
}

