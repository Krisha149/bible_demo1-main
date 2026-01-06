import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../route/routes.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }


  void redirectToNextScreen() {
      Get.offAllNamed(Routes.creEvent);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
