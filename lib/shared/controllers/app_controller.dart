import 'package:get/get.dart';

class AppController extends GetxController {
  //device & dimensions
  final devType = 'Mobile'.obs;
  final screenWidth = 0.0.obs;
  final screenHeight = 0.0.obs;
  final leftPanelWidth = 0.0.obs;
  final rightPanelWidth = 0.0.obs;

  //appBar Settings
  final appBarTitle = ''.obs;
  final appBarIcon = 0.obs;

  //visibility
  final appBarVisible = true.obs;
  final appBarActionsVisible = true.obs;
  final drawerVisible = true.obs;
  final leftPanelVisible = true.obs;
  final rightPanelVisible = true.obs;
  final bottomPanelVisible = true.obs;

  void setDevType(double screenWidth, double screenHeight) {
    this.screenWidth.value = screenWidth;
    this.screenHeight.value = screenHeight;
    if (screenWidth < 650) {
      devType.value = 'Mobile';
    } else if (screenWidth < 950) {
      devType.value = 'Tablet';
    } else {
      devType.value = 'Desktop';
    }
  }

  void setAppState(
    String appBarTitle,
    int appBarIcon,
    bool appBarVisible,
    bool appBarActionsVisible,
    bool drawerVisible,
    bool leftPanelVisible,
    bool rightPanelVisible,
    bool bottomPanelVisible,
    double leftPanelWidth,
    double rightPanelWidth,
  ) {
    this.appBarTitle.value = appBarTitle;
    this.appBarIcon.value = appBarIcon;
    this.appBarVisible.value = appBarVisible;
    this.appBarActionsVisible.value = appBarActionsVisible;
    this.drawerVisible.value = drawerVisible;
    this.leftPanelVisible.value = leftPanelVisible;
    this.rightPanelVisible.value = rightPanelVisible;
    this.bottomPanelVisible.value = bottomPanelVisible;
    this.leftPanelWidth.value = leftPanelWidth;
    this.rightPanelWidth.value = rightPanelWidth;
  }
}
