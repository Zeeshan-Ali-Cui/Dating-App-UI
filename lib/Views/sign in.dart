import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Phone number.dart';
import 'login.dart';
class signinview extends StatefulWidget {
  const signinview({Key? key}) : super(key: key);

  @override
  State<signinview> createState() => _signinviewState();
}

class _signinviewState extends State<signinview> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom:70,left: 23,right: 15),
                child: Container(
                  height: 135.h,
                  width: 353.w,
                  child: Image.asset("assets/images/loginscreen.png"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 29,left: 22,right: 23),
                  child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 3, color: Color(0xff06A864)), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                          labelText: 'User Name',
                          suffixIcon: Icon(Icons.person,color: Color(0xff06A864),)
                      ))),
              Padding(
                  padding: EdgeInsets.only(bottom: 21,left: 24,right: 21),
                  child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 3, color: Color(0xff06A864)), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                          labelText: 'Email',
                          suffixIcon: Icon(Icons.email_outlined,color: Color(0xff06A864),)
                      ))),
              Padding(
                  padding: EdgeInsets.only(bottom: 29,left: 24,right: 21),
                  child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 3, color: Color(0xff06A864
                            )), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                          labelText: 'Password',
                          suffixIcon:
                          InkWell(
                              onTap: () {
                                setState(() {
                                  obs = !obs;
                                });
                              },
                              child: obs
                                  ? Icon(Icons.lock,color: Color(0xff06A864),)
                                  : Icon(Icons.lock_open_sharp,color: Color(0xff06A864),
                              ))))),
              Padding(
                padding: EdgeInsets.only(bottom: 22,left: 86,right: 87),
                child:InkWell(
                  child: Container(
                    height: 65.h,
                    width: 217.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0192DA)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,bottom: 14),
                      child: Text('Sign In',style: TextStyle(
                          fontSize: 20.sp,fontWeight: FontWeight.w400,color: Colors.white
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => phonenumvar()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 21,left: 186,right:175),
                child:Container(
                  height: 25.h,
                  width: 71.w,
                  child: Text('OR',style: TextStyle(
                      fontSize: 21.sp,fontWeight: FontWeight.w400,color: Colors.black
                  ),textAlign: TextAlign.center,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10,left: 48,right: 48),
                child:Container(
                  height: 75.h,
                  width: 299.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0192DA)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 14),
                    child: Text('Register With Facebook',style: TextStyle(
                        fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25,left: 48,right: 48),
                child:Container(
                  height: 66.h,
                  width: 294.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0192DA)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 14),
                    child: Text('Register With OTP',style: TextStyle(
                        fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                    ),textAlign: TextAlign.center,),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
