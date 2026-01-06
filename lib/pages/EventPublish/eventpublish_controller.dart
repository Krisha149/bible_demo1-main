import 'package:bible_demo/route/routes.dart';
import 'package:get/get.dart';

class EventpublishController extends GetxController {
  void goToMyEvents() {
    Get.offAllNamed(Routes.myevent);

  }

  void backHome() {
    Get.offAllNamed('/home');
  }
}
