import 'package:bible_demo/pages/SelectCh/selectch_controller.dart';
import 'package:get/get.dart';

class SelectChBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectChController());
  }
}