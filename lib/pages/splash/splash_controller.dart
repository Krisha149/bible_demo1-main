import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../route/routes.dart';

class SplashController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentIndex = 0.obs;
  final RxBool pageReady = false.obs;


  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageReady.value = true;
    });
  }


  void onPageChanged(int index) {
    currentIndex.value = index;
  }


  void redirectToNextScreen() {
    if (currentIndex.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(Routes.holyBot);

       // Future.delayed(const Duration(seconds: 3), () {
       //  Get.offAllNamed(Routes.holyBot);
       // });
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
