import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';

class MyBody extends StatelessWidget {
  final Widget left;
  final Widget right;
  final Widget bottom;

  const MyBody({
    super.key,
    required this.left,
    required this.right,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return Obx(() => SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: appController.devType.value != "Mobile",
                    child: Container(
                      height: appController.height.value - 104,
                      width: appController.leftPanelWidth.value,
                      color: Colors.blue,
                      child: left,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(minWidth: 360),
                    width: appController.devType.value == "Mobile"
                        ? appController.width.value
                        : appController.width.value -
                            appController.leftPanelWidth.value,
                    height: appController.height.value - 104,
                    color: Colors.green,
                    child: right,
                  ),
                ],
              ),
              Container(
                height: 48,
                width: appController.width.value,
                color: Colors.cyan,
                child: bottom,
              ),
            ],
          ),
        ));
  }
}
