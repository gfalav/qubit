import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';
import 'package:qubit/app/ui/shared/scaffold/myappbar.dart';
import 'package:qubit/app/ui/shared/scaffold/mybody.dart';
import 'package:qubit/app/ui/shared/scaffold/mydrawer.dart';

class MyScaffold extends StatelessWidget {
  final Widget left;
  final Widget right;
  final Widget bottom;

  const MyScaffold(
      {super.key,
      required this.left,
      required this.right,
      required this.bottom});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());
    appController.setDevType(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    return Obx(
      () => Scaffold(
        appBar: appController.visibleAppBar.value
            ? MyAppbar().appBar(context)
            : null,
        body: MyBody(
          left: left,
          right: right,
          bottom: bottom,
        ),
        drawer: appController.visibleDrawer.value &&
                appController.devType.value == "Mobile"
            ? MyDrawer()
            : null,
      ),
    );
  }
}
