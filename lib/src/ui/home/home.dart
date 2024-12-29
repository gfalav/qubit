import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 100,
      ),
      body: Center(
        child: Image.asset("lib/assets/images/QubitLogo.png"),
      ),
    );
  }
}
