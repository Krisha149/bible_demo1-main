import 'package:get/get.dart';

import 'biblehighlight_controller.dart';

class BibleHighlightBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BibleHighlightController());
  }
}