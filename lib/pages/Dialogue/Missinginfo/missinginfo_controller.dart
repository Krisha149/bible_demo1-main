import 'package:get/get.dart';

import '../../../route/routes.dart';

class MissinginfoController extends GetxController {
  void onConfirm() {
    // Get.back();
    // Get.toNamed('/your_set');
    Get.offAllNamed(Routes.missInfo);
  }
}
