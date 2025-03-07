import 'package:get/get.dart';

class AppController extends GetxController {
  final RxString devType = "Mobile".obs;
  final RxString title = "Qubit".obs;
  final RxBool visibleAppBar = true.obs;
  final RxBool visibleDrawer = true.obs;
  final RxDouble width = 0.0.obs;
  final RxDouble height = 0.0.obs;

  void setDevType(double width, double height) {
    this.width.value = width;
    this.height.value = height;

    if (width < 700) {
      devType.value = "Mobile";
      return;
    } else if (width < 1000) {
      devType.value = "Tablet";
      return;
    } else {
      devType.value = "Desktop";
      return;
    }
  }
}
