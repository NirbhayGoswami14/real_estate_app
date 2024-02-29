import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/favourite/controllers/favourite_controller.dart';

class FavouriteBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<FavouriteController>(() =>FavouriteController());
  }

}