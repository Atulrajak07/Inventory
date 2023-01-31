import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../acccontroller/acccontroller.dart';

class AccView extends GetView<AccController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios,size: 26,),
            color: Colors.black,
            onPressed: (() => Get.back()),
          ),
        ),

        backgroundColor: Colors.transparent,
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("CREATE ACCOUNT",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("ENTER YOUR PHONE NUMBER",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20)),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("TO SEND OTP",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 20)),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Form(
                      key: controller.formKey,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IntlPhoneField(
                              decoration: const InputDecoration(
                                counterText: '',
                                labelText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                ),
                              ),
                              controller: controller.Pnumber,
                              initialCountryCode: 'IN',
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              validator: (p0) {

                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size.fromHeight(50),
                          shape: StadiumBorder(), // NEW
                        ),
                        onPressed: () {
                          // controller.validatenum();
                          // Get.toNamed(Routes.otp);
                          controller.goForotp();
                          // controller.checkconn();
                        },
                        child: Text(
                          'SEND OTP',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Align(
                      child: Text("OR",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(50),
                          shape: StadiumBorder(),
                          side:
                              BorderSide(width: 1.0, color: Colors.blue), // NEW
                        ),
                        onPressed: () {

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/google.jpg',
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'SIGNUP',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blue),
                            ),
                           SizedBox(
                             height: 20,
                           ),

                          ],

                        )),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
