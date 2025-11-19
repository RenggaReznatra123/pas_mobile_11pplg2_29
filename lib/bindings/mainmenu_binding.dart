import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/mainmenu_controller.dart';
import 'package:pas_mobile_11pplg2_29/controller/tvshow_controller.dart';
import 'package:pas_mobile_11pplg2_29/controller/favorite_controller.dart';

class MainmenuBinding extends Bindings {
  @override
  void dependencies() {
Get.lazyPut<MainmenuController>(() => MainmenuController());    
Get.lazyPut<TvshowController>(() => TvshowController());    
Get.lazyPut<FavoriteController>(() => FavoriteController());  }
}
