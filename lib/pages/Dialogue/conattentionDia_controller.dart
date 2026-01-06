import 'package:get/get.dart';

import '../../route/routes.dart';

class ConattentionDiaController extends GetxController {
  void onConfirm() {
    Get.offAllNamed(Routes.your_set);
  }
}
