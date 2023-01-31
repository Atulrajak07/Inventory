import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../../core/routes.dart';

class AccController extends GetxController{

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController Pnumber = TextEditingController();



  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  FirebaseAuth _auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";




  goForotp()  async{
    await _auth.verifyPhoneNumber(

        phoneNumber: "+91${Pnumber.text}",
        verificationCompleted: (phoneAuthCredential) async{

        },
        verificationFailed: (verificationFailed){

          print(verificationFailed);
        },

        codeSent: (verificationId, resendingToken) async{

          this.verificationID = verificationId;
          Get.toNamed(Routes.Otp);
        },
        codeAutoRetrievalTimeout: (verificationID) async{

        }
        );
  }
}