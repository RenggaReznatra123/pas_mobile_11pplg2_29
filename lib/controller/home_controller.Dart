import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  var userEmail = "".obs;

  @override
  void onInit() {
    loadUserData();
    super.onInit();
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userEmail.value = prefs.getString("email") ?? "User";
  }

  Future<void> logout() async {
    SharedPreferences prefs = aw
    ait SharedPreferences.getInstance();
    await prefs.clear();

    Get.offAllNamed("/login");
    Get.snackbar("Logout", "Berhasil keluar");
  }
}
