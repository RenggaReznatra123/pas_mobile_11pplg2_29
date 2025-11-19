import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/splashscreen_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController()); // Penting!

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 208, 255),
      body: const Center(
        child: Text(
          "TV Show App",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
