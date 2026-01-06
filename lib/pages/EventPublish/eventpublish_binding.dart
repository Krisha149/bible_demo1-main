import 'package:get/get.dart';

import 'eventpublish_controller.dart';

class EventpublishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventpublishController>(() => EventpublishController());
  }
}
