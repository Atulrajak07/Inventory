import 'dart:async';

import 'package:get/get.dart';

import '../../../core/routes.dart';

class SplashController extends GetxController{
  @override
  void onInit() {

    Timer(Duration(seconds:3), (){
      Get.offAllNamed(Routes.login);
    });
  }
}