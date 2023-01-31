import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../core/routes.dart';

class OtpController extends GetxController{

  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationID = "";
 var code = "";

  otpverify()  {

    try{
      PhoneAuthCredential credential  = PhoneAuthProvider.credential(verificationId: this.verificationID, smsCode: code);
     // await _auth.signInWithCredential(credential);
     //  Get.toNamed(Routes.googlesign);
    }
    catch(e){
      print('Wrong OTP');

    }

  }


}