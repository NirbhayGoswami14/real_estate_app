import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/account/controllers/account_controller.dart';

class AccountBinding extends Bindings
{
  @override
  void dependencies() {
  Get.lazyPut<AccountController>(() =>AccountController());
  }

}