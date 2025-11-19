import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/loginapi_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
