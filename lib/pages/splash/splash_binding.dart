import 'package:get/get.dart';
import 'package:bible_demo/pages/splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}