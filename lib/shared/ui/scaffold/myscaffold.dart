import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/scaffold/myappbar.dart';
import 'package:qubit/shared/ui/scaffold/mybody.dart';
import 'package:qubit/shared/ui/scaffold/mydrawer.dart';

class Myscaffold extends StatelessWidget {
  final Widget left;
  final Widget main;
  final Widget right;
  final Widget bottom;
  const Myscaffold({
    super.key,
    required this.left,
    required this.main,
    required this.right,
    required this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    appController.setDevType(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    );

    return Obx(
      () => Scaffold(
        appBar:
            appController.appBarVisible.value
                ? MyAppBar().appBar(context)
                : null,
        drawer: appController.devType.value == 'Mobile' ? Mydrawer() : null,
        body: Mybody(left: left, main: main, right: right, bottom: bottom),
      ),
    );
  }
}
