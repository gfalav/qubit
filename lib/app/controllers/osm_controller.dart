import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';

class OsmController extends GetxController {
  MapController controller = MapController(
    initPosition: GeoPoint(latitude: -33.267005, longitude: -66.236415),
  );
}
