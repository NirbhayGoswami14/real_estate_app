import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';
import 'package:real_estate_app/util/app_images.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2000),() {
      Get.offNamed(Routes.LOGIN);
    },);

    return Scaffold(
        backgroundColor:Colors.white,
        body: Center(child: Image.asset(AppImages.logoWithTitle,width:300,height: 300,),));
  }
}
