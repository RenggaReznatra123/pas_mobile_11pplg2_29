import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pas_mobile_11pplg2_29/routes/Routes.dart';
import 'package:pas_mobile_11pplg2_29/controller/loginapi_controller.Dart';

final loginController = Get.find<LoginApiController>();

class ProfileController extends GetxController {
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    await loginController.signOut();
    Get.offAllNamed(AppRoutes.loginapipages);
  }
}
