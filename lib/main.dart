import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/user_controller.dart';
import 'package:qubit/app/ui/home/home.dart';
import 'package:qubit/app/ui/theme/util.dart';
import 'package:qubit/app/ui/theme/theme.dart';
import 'package:qubit/app/ui/user/signin.dart';
import 'package:qubit/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final UserController userController = Get.put(UserController());

    TextTheme textTheme =
        createTextTheme(context, "Red Hat Display", "Open Sans Condensed");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: 'Qubit',
      debugShowCheckedModeBanner: false,
      onReady: () => userController.routeIsLogged(),
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: Home(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/signin", page: () => Signin()),
      ],
    );
  }
}
