import 'package:get/get.dart';
import '../acccontroller/acccontroller.dart';

class AccBinding extends Bindings{
  @override
  void dependencies() {
Get.put(AccController());
  }

}