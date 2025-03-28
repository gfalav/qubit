import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/menu/menu.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => appController.setAppState(
        "Home",
        0xe318,
        true,
        true,
        true,
        true,
        true,
        true,
        290,
        300,
      ),
    );

    return MyScaffold(
      left: Menu(),
      main: Center(child: Text("Home")),
      right: Center(child: Text("Right")),
      bottom: Center(child: Text("Bottom")),
    );
  }
}
