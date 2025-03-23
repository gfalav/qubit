import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/osm_controller.dart';
import 'package:qubit/shared/controllers/app_controller.dart';
import 'package:qubit/shared/ui/scaffold/myscaffold.dart';

class Osm extends StatelessWidget {
  const Osm({super.key});

  @override
  Widget build(BuildContext context) {
    final OsmController osmController = Get.put(OsmController());
    final AppController appController = Get.put(AppController());

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => appController.setAppState(
        "Mapa",
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
      left: SizedBox(),
      main: Container(
        color: Colors.cyan,
        width: 100,
        height: 600,
        child: OSMFlutter(
          controller: osmController.controller,
          osmOption: OSMOption(zoomOption: ZoomOption(initZoom: 14)),
        ),
      ),
      right: SizedBox(),
      bottom: SizedBox(),
    );
  }
}
