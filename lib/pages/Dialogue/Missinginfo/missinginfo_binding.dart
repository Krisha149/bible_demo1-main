import 'package:get/get.dart';

import 'missinginfo_controller.dart';

class MissinginfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MissinginfoController>(
            () => MissinginfoController());
  }
}
