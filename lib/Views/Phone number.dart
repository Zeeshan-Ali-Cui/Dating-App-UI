import 'package:date_app/Views/onetimepassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class phonenumvar extends StatefulWidget {
  const phonenumvar({Key? key}) : super(key: key);

  @override
  State<phonenumvar> createState() => _phonenumvarState();
}

class _phonenumvarState extends State<phonenumvar> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 54,bottom:80,left: 20,right: 25),
                child: Container(
                  height: 135.h,
                  width: 353.w,
                  child: Image.asset("assets/images/loginscreen.png"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 50,left: 22,right: 43),
                  child: Text(" Please enter your valid phone number. We will send you a 4-digit code to verify"
                  ,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)),
              Padding(
                padding: const EdgeInsets.only(bottom: 36,left: 23,right: 23),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Color(0xff06A864),blurRadius: 5,offset: Offset(2,4))]),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(onInputChanged: (value){},
                        formatInput: false,
                        inputDecoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 22,left: 80,right: 80),
                child:InkWell(
                  child: Container(
                    height: 77.h,
                    width: 230.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0192DA)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top: 21,bottom: 20),
                      child: Text('Submit',style: TextStyle(
                          fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => otpview()));
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}
