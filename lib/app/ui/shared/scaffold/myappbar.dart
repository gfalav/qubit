import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';
import 'package:qubit/app/ui/shared/scaffold/messages.dart';

class MyAppbar {
  PreferredSizeWidget appBar(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return AppBar(
      elevation: 10,
      title: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                IconData(
                  appController.appBarIcon.value,
                  fontFamily: 'MaterialIcons',
                ),
              ),
            ),
            Text(appController.appBarTitle.value),
          ],
        ),
      ),
      centerTitle: true,
      actions: [
        Visibility(
          visible: appController.visibleActions.value,
          child: Messages(),
        ),
      ],
    );
  }
}
