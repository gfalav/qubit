import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';

class Mybody extends StatelessWidget {
  final Widget left;
  final Widget main;
  final Widget right;
  final Widget bottom;
  const Mybody({
    super.key,
    required this.left,
    required this.main,
    required this.right,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    return Obx(
      () => Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible:
                      appController.leftPanelVisible.value &&
                      appController.devType.value != 'Mobile',
                  child: Container(
                    width: appController.leftPanelWidth.value,
                    color: ColorScheme.of(context).surfaceContainerLowest,
                    child: left,
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width:
                        appController.devType.value == 'Mobile'
                            ? appController.screenWidth.value
                            : appController.screenWidth.value -
                                appController.leftPanelWidth.value -
                                appController.rightPanelWidth.value,
                    color: ColorScheme.of(context).surface,
                    child: main,
                  ),
                ),
                Visibility(
                  visible:
                      appController.rightPanelVisible.value &&
                      appController.devType.value != 'Mobile',
                  child: Container(
                    width: appController.rightPanelWidth.value,
                    color: ColorScheme.of(context).surfaceContainerLowest,
                    child: right,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: appController.bottomPanelVisible.value,
            child: Container(
              width: appController.screenWidth.value,
              height: 48,
              color: ColorScheme.of(context).surfaceContainer,
              child: bottom,
            ),
          ),
        ],
      ),
    );
  }
}
