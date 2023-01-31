 import 'package:get/get.dart';
import 'package:inventory_final/core/routes.dart';
import 'package:inventory_final/feature/login/binding/login_binding.dart';
import 'package:inventory_final/feature/login/view/login_view.dart';
import 'package:inventory_final/feature/otp/otpView/otpView.dart';
import 'package:inventory_final/feature/otp/otpbinding/otpbinding.dart';
import 'package:inventory_final/feature/splash/binding/splash_binding.dart';
import 'package:inventory_final/feature/splash/view/splash_view.dart';

import '../feature/account/accbinding/accbinding.dart';
import '../feature/account/accview/accview.dart';

List <GetPage> allpage =[

   GetPage(name: Routes.splash,
       page: ()=> const SplashView(),
     binding: SplashBinding(),
   ),

  GetPage(name: Routes.login,
    page: ()=> const LoginView(),
    binding: LoginBinding(),
  ),

  GetPage(name: Routes.Otp,
    page: ()=> OtpView(),
    binding: OtpBinding(),
  ),

  GetPage(
    name: Routes.acc,
    page: ()=> AccView(),
    binding: AccBinding(),
  ),

 ];