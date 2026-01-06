import 'package:bible_demo/route/routes.dart';
import 'package:get/get.dart';

class YourSetController extends GetxController {
  void goToMyEvents() {
    // Get.toNamed('/myevent');
    Get.offAllNamed(Routes.myevent);

  }

  void backHome() {
    Get.offAllNamed('/home');
  }
}
