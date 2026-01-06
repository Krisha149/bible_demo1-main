import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../route/routes.dart';

class Otp2controller extends GetxController {
  final List<TextEditingController> textControllers =
  List.generate(4, (_) => TextEditingController());

  String get otp =>
      textControllers.map((c) => c.text).join();

  @override
  void onInit() {
    super.onInit();
  }

  final List<FocusNode> focusNodes =
  List.generate(4, (_) => FocusNode());

  void redirectToNextScreen() {
    if (otp.length == 4) {
      Get.offAllNamed(Routes.otp3);
    } else {
      Get.snackbar('Error', 'Please enter 4 digit OTP');
    }
  }

  @override
  void onClose() {
    for (var c in textControllers) {
      c.dispose();
    }
    super.onClose();
  }
}
