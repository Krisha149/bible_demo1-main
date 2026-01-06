import 'package:bible_demo/pages/Romans/romans_controller.dart';
import 'package:get/get.dart';

class RomansBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RomansController());
  }
}