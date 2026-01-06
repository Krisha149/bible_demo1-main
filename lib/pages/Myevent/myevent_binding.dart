import 'package:get/get.dart';
import 'myevent_controller.dart';

class MyEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyEventController>(() => MyEventController());
  }
}
