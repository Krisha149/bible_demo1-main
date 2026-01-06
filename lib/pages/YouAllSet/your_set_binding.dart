import 'package:get/get.dart';
import 'your_set_controller.dart';

class YourSetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourSetController>(() => YourSetController());
  }
}
