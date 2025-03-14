import 'package:flutter/material.dart';
import 'package:qubit/shared/ui/menu/menu.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Menu());
  }
}
