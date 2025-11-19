import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/favorite_controller.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
Get.lazyPut<FavoriteController>(() => FavoriteController());  }
}
