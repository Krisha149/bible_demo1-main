import 'package:get/get.dart';
import 'joinEvent_controller.dart';

class JoinEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(JoineventController());
  }
}