import 'package:get/get.dart';
import '../controller/profile_controller.Dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}