import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/util/color_utils.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Obx(()=>BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),activeIcon: Icon(Icons.home_filled),label:""),
        BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined,),activeIcon:Icon(Icons.location_on_sharp,),label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_outlined ),activeIcon: Icon(Icons.bookmark ),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,),activeIcon: Icon(Icons.person,),label: "Account"),],
          selectedItemColor:ColorUtils.primaryColor,
        iconSize:27,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
      onTap: (value) {
        controller.selectedIndex.value=value;
      },currentIndex:controller.selectedIndex.value),),
      body:Column()
    );
  }
}
