import 'package:get/get.dart';
import 'conattentionDia_controller.dart';

class ConattentionDiaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConattentionDiaController>(
            () => ConattentionDiaController());
  }
}
