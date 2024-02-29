import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings
{
  @override
  void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController());
  }

}