import 'package:get/get.dart';
import '../controller/mainmenu_controller.Dart';
import '../controller/profile_controller.Dart';
import '../controller/home_controller.Dart';

class MainmenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainmenuController>(() => MainmenuController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}