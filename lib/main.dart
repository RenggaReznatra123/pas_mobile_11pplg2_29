import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/bindings/splash_bindings.dart';
import 'package:pas_mobile_11pplg2_29/controller/loginapi_controller.Dart';
import 'package:pas_mobile_11pplg2_29/routes/Routes.dart';
import 'routes/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(LoginApiController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TryOut App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Inisialisasi SplashController
      initialBinding: SplashBinding(),
      initialRoute: AppRoutes.splashpages,
      getPages: AppPages.pages,
    );
  }
}
