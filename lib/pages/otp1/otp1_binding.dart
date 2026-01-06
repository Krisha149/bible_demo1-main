import 'package:get/get.dart';
import 'otp1.controller.dart';

class Otp1Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Otp1controller());
  }
}