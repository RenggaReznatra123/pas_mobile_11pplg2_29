import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/tvshow_controller.dart';

class TvshowBinding extends Bindings {
  @override
  void dependencies() {
Get.lazyPut<TvshowController>(() => TvshowController());  }
}
