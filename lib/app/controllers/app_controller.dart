import 'package:get/get.dart';

class AppController extends GetxController {
  final RxString devType = "Mobile".obs; //device type

  //appbar settings
  final RxString appBarTitle = "Qubit".obs; //appbar title
  final RxInt appBarIcon = 0xe318.obs; //appbar icon
  final RxBool visibleActions = true.obs; //actions

  //visibility settings
  final RxBool visibleAppBar = true.obs;
  final RxBool visibleDrawer = true.obs;
  final RxBool visibleBottomBar = true.obs;
  final RxBool visibleLeftPanel = true.obs;
  final RxBool visibleRightPanel = true.obs;

  //panels dimensions
  final RxDouble width = 0.0.obs;
  final RxDouble height = 0.0.obs;
  final RxDouble leftPanelWidth = 0.3.obs;
  final RxDouble mainPanelWidth = 0.4.obs;
  final RxDouble rightPanelWidth = 0.3.obs;

  void setAppParams(
    String appBarTitle,
    int appBarIcon,
    bool visibleActions,
    bool visibleAppBar,
    bool visibleDrawer,
    bool visibleBottomBar,
    bool visibleLeftPanel,
    bool visibleRightPanel,
    double leftPanelWidth,
    double mainPanelWidth,
    double rightPanelWidth,
  ) {
    this.appBarTitle.value = appBarTitle;
    this.appBarIcon.value = appBarIcon;
    this.visibleActions.value = visibleActions;
    this.visibleAppBar.value = visibleAppBar;
    this.visibleDrawer.value = visibleDrawer;
    this.visibleBottomBar.value = visibleBottomBar;
    this.visibleLeftPanel.value = visibleLeftPanel;
    this.visibleRightPanel.value = visibleRightPanel;
    this.leftPanelWidth.value = leftPanelWidth;
    this.mainPanelWidth.value = mainPanelWidth;
    this.rightPanelWidth.value = rightPanelWidth;
  }

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
