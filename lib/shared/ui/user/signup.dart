import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/pixabay/pixabay.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';
import 'package:qubit/shared/ui/user/forms/signupform.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      appController.setAppState(
        "SignUp",
        0xE318,
        false,
        false,
        false,
        false,
        true,
        true,
        0.0,
        600,
      );
    });
    return MyScaffold(
      left: SizedBox(),
      main: SignUpForm(),
      right: Pixabay(),
      bottom: SizedBox(),
    );
  }
}
