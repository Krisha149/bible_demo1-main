import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../Dialogue/ReadyToPublish/readytopublish_view.dart';
class BibleHighlightController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  void redirectToNextScreen() {
    Get.dialog(
      ReadytopublishView(),
      useSafeArea: true,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.4),
    );
    // Get.offAllNamed(Routes.readyPublish);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
