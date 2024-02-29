import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  late GetStorage storage;

  @override
  void onInit(){
    storage= GetStorage("myData");
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
