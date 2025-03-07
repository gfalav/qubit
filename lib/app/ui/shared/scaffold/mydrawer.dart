import 'package:flutter/material.dart';
import 'package:qubit/app/ui/shared/logo/logo.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [Logo()],
      ),
    );
  }
}
