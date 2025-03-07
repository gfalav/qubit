import 'package:flutter/material.dart';
import 'package:qubit/app/ui/shared/scaffold/myscaffold.dart';
import 'package:qubit/app/ui/shared/splashimage/splash.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      left: Center(
        child: Splash(),
      ),
      right: Center(
        child: Text("Home"),
      ),
      bottom: Center(
        child: Text("Bottom"),
      ),
    );
  }
}
