import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/mainmenu_controller.Dart';
import 'package:pas_mobile_11pplg2_29/controller/profile_controller.Dart';
import 'package:pas_mobile_11pplg2_29/controller/home_controller.Dart';

class MainmenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() => MainPageController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}