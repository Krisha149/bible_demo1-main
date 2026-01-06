import 'package:get/get.dart';
import 'otp3.controller.dart';

class Otp3Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(Otp3controller());
  }
}