import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/routes/Routes.dart';
import '../pages/Loginapi_pages.Dart';
import '../pages/splashscreen.Dart';
import '../pages/mainmenu_pages.Dart';
import '../pages/home_pages.Dart';
import '../pages/profile_pages.Dart';
import '../pages/favorite_pages.Dart';
import '../pages/register_pages.Dart';
import '../bindings/loginapi_binding.Dart';
import '../bindings/splash_bindings.Dart';
import '../bindings/Register_bindng.Dart';
import '../bindings/mainmenu_binding.Dart';
import '../bindings/home_binding.Dart';
import '../bindings/profile_binding.Dart';
import '../bindings/favorite_binding.Dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.loginapipages,
      page: () => LoginApiPage(),
      binding: LoginApiBinding(),
    ),
    GetPage(
      name: AppRoutes.registerapipages,
      page: () => RegisterApiPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.splashpages,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.mainMenuPage,
      page: () => MainMenuPage(),
      binding: MainmenuBinding(),
    ),
    GetPage(
      name: AppRoutes.homepages,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.favoritepages,
      page: () => FavoritesPage(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: AppRoutes.profilepages,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
