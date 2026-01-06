import 'package:bible_demo/pages/Dialogue/ReadyToPublish/readytopublish_controller.dart';
import 'package:get/get.dart';


class ReadytopublishBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReadytopublishController>(
            () => ReadytopublishController());
  }
}
