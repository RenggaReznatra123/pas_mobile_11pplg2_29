import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/loginapi_controller.Dart';
import 'package:pas_mobile_11pplg2_29/routes/Routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  final LoginApiController loginController = Get.find<LoginApiController>();

  @override
  void onReady() {
    super.onReady();
    checkLogin();
  }

  Future<void> checkLogin() async {
    print("SplashController: checkLogin running");
    try {
      final prefs = await SharedPreferences.getInstance();
      final isLoggedIn = prefs.getBool("isLoggedIn") ?? false;
      final loginType = prefs.getString("loginType") ?? "";
      final token = prefs.getString("token") ?? "";

      print("isLoggedIn: $isLoggedIn, loginType: $loginType, token: $token");

      await Future.delayed(const Duration(seconds: 2));

      if (!isLoggedIn || loginType != "api" || token.isEmpty) {
        print("login");
        Get.offAllNamed(AppRoutes.loginapipages);
        return;
      }

      print("loading user data");
      await loginController.loadUserDataFromPrefs();
      Get.offAllNamed(AppRoutes.mainMenuPage);
    } catch (e) {
      print("Error Splashscreen: $e");
      Get.offAllNamed(AppRoutes.loginapipages);
    }
  }
}
