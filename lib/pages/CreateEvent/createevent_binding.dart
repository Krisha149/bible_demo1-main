import 'package:get/get.dart';
import 'createevent_controller.dart';

class CreateEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CreateEventController());
  }
}