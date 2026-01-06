import 'package:get/get.dart';
import 'bibleversion_controller.dart';

class BibleVersionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BibleVersionController>(
          () => BibleVersionController(),
    );
    // Get.put(BibleVersionController());
  }
}