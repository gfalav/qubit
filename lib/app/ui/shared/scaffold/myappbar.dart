import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';

class MyAppbar {
  PreferredSizeWidget appBar(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return AppBar(
      elevation: 10,
      title: Obx(
        () => Text(appController.title.value),
      ),
      centerTitle: true,
    );
  }
}
