import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';
import 'package:real_estate_app/util/app_images.dart';
import 'package:real_estate_app/util/local_storage.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);

  LocalStorage localStorage=LocalStorage();
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2000),() {
      print(localStorage.isOnBoard());
      if(localStorage.isOnBoard())
        {
          Get.offNamed(Routes.ON_BOARDING);

        }
      else
        {
          Get.offNamed(Routes.LOGIN);
        }

       },);

    return Scaffold(
        backgroundColor:Colors.white,
        body: Center(child: Image.asset(AppImages.logoWithTitle,width:300,height: 300,),));
  }
}
