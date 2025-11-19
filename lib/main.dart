import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pas_mobile_11pplg2_29/routes/pages.dart';
import 'package:pas_mobile_11pplg2_29/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // Start at the splash screen which will check SharedPreferences
      // and redirect to main menu or login accordingly.
      initialRoute: AppRoutes.splashpages,
      getPages: AppPages.pages,
    );
  }
}
