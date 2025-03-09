import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/app_controller.dart';
import 'package:qubit/app/controllers/user_controller.dart';
import 'package:qubit/app/ui/shared/scaffold/myscaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.put(AppController());
    final UserController userController = Get.put(UserController());

    WidgetsBinding.instance.addPostFrameCallback(
      (timestamp) {
        appController.setAppParams(
            "Home", 0xE318, true, true, true, true, true, true, 0.3, 0.4, 0.3);
      },
    );

    return MyScaffold(
      left: Center(
        child: Text("Left"),
      ),
      mainBody: Center(
        child: FilledButton(
          onPressed: () {
            userController.signOut();
          },
          child: Text("SignOut"),
        ),
      ),
      right: Center(
        child: Text("Right"),
      ),
      bottom: Center(
        child: Text("Bottom"),
      ),
    );
  }
}
