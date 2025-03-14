import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/pixabay/pixabay.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';
import 'package:qubit/shared/ui/user/forms/changepwdform.dart';

class Changepassword extends StatelessWidget {
  const Changepassword({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      appController.setAppState(
        "Password",
        0xf052b,
        true,
        true,
        true,
        false,
        true,
        false,
        0.0,
        600,
      );
    });
    return MyScaffold(
      left: SizedBox(),
      main: Changepwdform(),
      right: Pixabay(),
      bottom: SizedBox(),
    );
  }
}
