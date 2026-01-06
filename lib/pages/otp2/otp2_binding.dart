import 'package:get/get.dart';
import 'otp2.controller.dart';

class Otp2Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Otp2controller());
  }
}