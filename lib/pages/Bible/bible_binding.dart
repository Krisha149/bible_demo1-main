import 'package:get/get.dart';

import 'bible_controller.dart';

class BibleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BibleController());
  }
}