import 'package:date_app/Views/like%20interest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import 'Phone number.dart';
class otpview extends StatefulWidget {
  const otpview({Key? key}) : super(key: key);

  @override
  State<otpview> createState() => _otpviewState();
}

class _otpviewState extends State<otpview> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          body:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 237,bottom: 29,left: 101,right: 107),
                  child:Container(
                    height: 57.h,
                    width: 172.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text('Verify',style: TextStyle(
                        fontSize: 48.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                    ),textAlign: TextAlign.center,),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 29,left: 19,right: 20),
                    child: Text("Please enter the 4-digit code sent to your number"
                      ,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,)),
                Container(
                  padding: const EdgeInsets.only(left: 66,right: 66,bottom: 76 ),
                  child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,
                    style: TextStyle(
                        fontSize: 24
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                        enabledBorderColor: Color(0xff06A864),
                    ),
                    outlineBorderRadius: 30,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 22,left: 80,right: 80),
                  child:InkWell(
                    child: Container(
                      height: 77.h,
                      width: 238.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff0192DA)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(top: 21,bottom: 18),
                        child: Text('Submit',style: TextStyle(
                            fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                        ),textAlign: TextAlign.center,),
                      ),
                    ),
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => likeinterest()));
                    },
                  ),
                ),
              ],
            ),
          )
      );
  }
}
