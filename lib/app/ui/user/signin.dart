import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';
import 'package:qubit/app/ui/shared/pixabay/pixabay.dart';
import 'package:qubit/app/ui/shared/scaffold/myscaffold.dart';
import 'package:qubit/app/ui/user/forms/signinform.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) {
        appController.setAppParams("SignIn", 0xE318, true, false, true, false,
            false, true, 0.0, 0.6, 0.4);
      },
    );
    return MyScaffold(
      left: SizedBox(),
      mainBody: SignInForm(),
      right: Pixabay(),
      bottom: SizedBox(),
    );
  }
}
