import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';
import 'package:qubit/app/ui/home/home.dart';

class MyBody extends StatelessWidget {
  const MyBody({super.key});

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
                      width: 290,
                      color: Colors.blue,
                      child: Text("Col 1"),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(minWidth: 360),
                    width: appController.devType.value == "Mobile"
                        ? appController.width.value
                        : appController.width.value - 290,
                    height: appController.height.value - 104,
                    color: Colors.green,
                    child: Home(),
                  ),
                ],
              ),
              Container(
                height: 48,
                width: appController.width.value,
                color: Colors.cyan,
                child: Text("Row 2"),
              ),
            ],
          ),
        ));
  }
}
