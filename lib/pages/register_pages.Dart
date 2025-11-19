import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg2_29/controller/register_controller.Dart';
import 'package:pas_mobile_11pplg2_29/widget/CustomTextField.Dart';
import 'package:pas_mobile_11pplg2_29/widget/Custombutton.dart';

class RegisterApiPage extends StatelessWidget {
  RegisterApiPage({super.key});

  final RegisterController regC = Get.put(RegisterController());

  static const Color primaryBlue = Color(0xFF194AA1);
  static const Color lightBlue = Color(0xFF007BFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Please fill the form to continue",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: regC.fullNameC,
                      myText: "Full Name",
                      isNumber: false,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      controller: regC.nameC,
                      myText: "Username",
                      isNumber: false,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      controller: regC.emailC,
                      myText: "Email",
                      isNumber: false,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      controller: regC.passC,
                      myText: "Password",
                      obscureText: true,
                      isNumber: false,
                    ),
                    const SizedBox(height: 16),

                    CustomTextField(
                      controller: regC.confirmPassC,
                      myText: "Confirm Password",
                      obscureText: true,
                      isNumber: false,
                    ),

                    const SizedBox(height: 25),

                    Obx(
                      () => CustomButton(
                        text: "Sign Up",
                        isLoading: regC.isLoading.value,
                        onPressed: () => regC.register(),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.black54),
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: lightBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
