import 'package:get/get.dart';

import '../otpcontroller/Otpcontroller.dart';

class OtpBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OtpController());
  }
}