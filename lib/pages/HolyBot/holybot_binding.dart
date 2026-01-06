import 'package:get/get.dart';
import 'holybot_controller.dart';

class HolyBotBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HolyBotController());
  }
}