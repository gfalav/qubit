import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/shared/controllers/user_controller.dart';
import 'package:qubit/shared/ui/home/home.dart';
import 'package:qubit/shared/ui/theme/theme.dart';
import 'package:qubit/shared/ui/theme/util.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:qubit/shared/ui/user/changepassword.dart';
import 'package:qubit/shared/ui/user/changephotousr.dart';
import 'package:qubit/shared/ui/user/changeusrname.dart';
import 'package:qubit/shared/ui/user/resetpassword.dart';
import 'package:qubit/shared/ui/user/signin.dart';
import 'package:qubit/shared/ui/user/signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  await FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(
      context,
      "Red Hat Display",
      "Open Sans Condensed",
    );

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      onReady: () => userController.initRouteIsLogged(),
      home: Home(),
      initialRoute: '/',
      getPages: [
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/signin", page: () => SignIn()),
        GetPage(name: "/signup", page: () => SignUp()),
        GetPage(name: "/pwdreset", page: () => Resetpassword()),
        GetPage(name: "/changepwd", page: () => Changepassword()),
        GetPage(name: "/updateuser", page: () => ChangeUsrName()),
        GetPage(name: "/changephoto", page: () => Changephotousr()),
      ],
    );
  }
}
