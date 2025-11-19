import 'package:get/get.dart';
import '../controller/loginapi_controller.Dart';

class LoginApiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginApiController>(() => LoginApiController());
  }
}