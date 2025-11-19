import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/splashscreen_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
Get.lazyPut<SplashController>(() => SplashController());  }
}
