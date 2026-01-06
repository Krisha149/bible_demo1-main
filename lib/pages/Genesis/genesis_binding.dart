import 'package:get/get.dart';
import 'genesis_controller.dart';

class GenesisBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GenesisController());
  }
}