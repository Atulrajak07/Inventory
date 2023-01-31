import 'package:get/get.dart';
import 'package:inventory_final/feature/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(SplashController());
  }

}