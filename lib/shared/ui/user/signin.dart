import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/pixabay/pixabay.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';
import 'package:qubit/shared/ui/user/forms/signinform.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      appController.setAppState(
        "SignIn",
        0xe3b2,
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
      main: SignInForm(),
      right: Pixabay(),
      bottom: SizedBox(),
    );
  }
}
