import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/user_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Obx(
          () => Column(
            children: [
              Text(
                userController.isLogged.value.toString(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () =>
                        {userController.signUp("gfalav@yahoo.com", "pppppp")},
                    child: Text("Sign Up"),
                  ),
                  FilledButton(
                    onPressed: () =>
                        {userController.signIn("gfalav@yahoo.com", "pppppp")},
                    child: Text("Sign In"),
                  ),
                  FilledButton(
                    onPressed: () => {userController.signOut()},
                    child: Text("Sign Out"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
