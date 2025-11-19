import 'package:get/get.dart';
import '../controller/splashscreen_controller.Dart';

class SplashBinding extends Bindings {  
  @override  
  void dependencies() {  
    Get.lazyPut<SplashController>(() => SplashController());  
  }  
}