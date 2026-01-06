import 'package:get/get.dart';
import 'Philippians_controller.dart';

class PhilippiansBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PhilippiansController());
  }
}