import 'package:get/get.dart';

import '../../../route/routes.dart';

class ReadytopublishController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }


  void onConfirm() {
    Get.offAllNamed(Routes.eventPublish);
  }
}
