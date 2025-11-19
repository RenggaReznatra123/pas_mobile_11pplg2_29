import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/routes/routes.dart';

// pages
import 'package:pas_mobile_11pplg2_29/pages/loginapi_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/register_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/mainmenu_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/tvshow_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/favorite_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/profile_pages.dart';
import 'package:pas_mobile_11pplg2_29/pages/splashscreen_pages.dart';

// bindings
import 'package:pas_mobile_11pplg2_29/bindings/login_binding.dart';
import 'package:pas_mobile_11pplg2_29/bindings/register_binding.dart';
import 'package:pas_mobile_11pplg2_29/bindings/mainmenu_binding.dart';
import 'package:pas_mobile_11pplg2_29/bindings/tvshow_binding.dart';
import 'package:pas_mobile_11pplg2_29/bindings/favorite_binding.dart';
import 'package:pas_mobile_11pplg2_29/bindings/splash_binding.dart';

class AppPages {
  static final pages = [

    GetPage(
      name: AppRoutes.loginapipages,
      page: () => const LoginapiPages(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.registerpages,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.mainmenupages,
      page: () => MainmenuPages(),
      binding: MainmenuBinding(),
    ),
    GetPage(
      name: AppRoutes.splashpages,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.tvshowpages,
      page: () => const TvshowPage(),
      binding: TvshowBinding(),
    ),
    GetPage(
      name: AppRoutes.favoritepages,
      page: () => const FavoritePage(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: AppRoutes.profilepages,
      page: () => const ProfilePage(),
    ),
  ];
}
