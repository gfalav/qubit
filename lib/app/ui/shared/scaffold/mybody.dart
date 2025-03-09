import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';

class MyBody extends StatelessWidget {
  final Widget left;
  final Widget mainBody;
  final Widget right;
  final Widget bottom;
  const MyBody({
    super.key,
    required this.left,
    required this.mainBody,
    required this.right,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return Obx(
      () => SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Visibility(
                    visible: appController.visibleLeftPanel.value &&
                        appController.devType.value != "Mobile",
                    child: Container(
                      color: Colors.blue,
                      width: appController.width *
                          appController.leftPanelWidth.value,
                      child: left,
                    ),
                  ),
                  SizedBox(
                    width: appController.devType.value == "Mobile"
                        ? appController.width.value
                        : appController.width *
                            appController.mainPanelWidth.value,
                    child: mainBody,
                  ),
                  Visibility(
                    visible: appController.visibleRightPanel.value &&
                        appController.devType.value != "Mobile",
                    child: SizedBox(
                      width: appController.width *
                          appController.rightPanelWidth.value,
                      child: right,
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: appController.visibleBottomBar.value,
              child: SizedBox(
                width: appController.width.value,
                height: 48,
                child: bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
