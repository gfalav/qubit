import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:qubit/src/ui/users/sign_in.dart';
import 'firebase_options.dart';
import 'package:qubit/assets/theme/theme.dart';
import 'package:qubit/assets/theme/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme =
        createTextTheme(context, "Open Sans", "Open Sans Condensed");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
        title: 'Qubit',
        debugShowCheckedModeBanner: false,
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        home: const SignIn());
  }
}
