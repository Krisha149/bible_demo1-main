import 'package:get/get.dart';

import 'deletehighlight_controller.dart';

class DeleteHighlightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteHighlightController>(
            () => DeleteHighlightController());
  }
}
