import 'package:get/get.dart';
import '../controller/home_controller.Dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}