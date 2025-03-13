import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/scaffold/mymessages.dart';

class MyAppBar {
  PreferredSizeWidget appBar(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return AppBar(
      backgroundColor: ColorScheme.of(context).primaryContainer,
      title: Obx(
        () => Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                IconData(
                  appController.appBarIcon.value,
                  fontFamily: "MaterialIcons",
                ),
              ),
            ),
            Text(
              appController.appBarTitle.value,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      actions: [
        Obx(
          () => Visibility(
            visible: appController.appBarActionsVisible.value,
            child: MyMessages(),
          ),
        ),
      ],
    );
  }
}
