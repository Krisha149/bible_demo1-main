import 'package:get/get.dart';

import '../../../route/routes.dart';

class DeleteHighlightController extends GetxController {
  void onConfirm() {
    Get.offAllNamed(Routes.missInfo);
  }
}
