import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/pixabay/pixabay.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';
import 'package:qubit/shared/ui/user/forms/changephotoform.dart';

class Changephotousr extends StatelessWidget {
  const Changephotousr({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      appController.setAppState(
        "Foto Usr",
        0xe332,
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
      main: ChangePhotoForm(),
      right: Pixabay(),
      bottom: SizedBox(),
    );
  }
}
