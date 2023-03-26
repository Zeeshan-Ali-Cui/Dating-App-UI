import 'package:date_app/Views/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool obs= true;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 23,right: 15),
              child: Container(
                height: 135.h,
                width: 353.w,
                child: Image.asset("assets/images/loginscreen.png"),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 62,bottom: 32,left: 24,right: 21),
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
                padding: EdgeInsets.only(bottom: 112,left: 24,right: 21),
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
              padding: EdgeInsets.only(bottom: 20,left: 46,right: 45),
              child:InkWell(
                child: Container(
                  height: 75.h,
                  width: 299.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0192DA)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 14),
                    child: Text('Sign In',style: TextStyle(
                        fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                    ),textAlign: TextAlign.center,),
                  ),
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10,left: 186,right:175),
              child:Container(
                height: 41.h,
                width: 29.w,
                child: Text('or',style: TextStyle(
                    fontSize: 27.sp,fontWeight: FontWeight.w500,color: Colors.black
                ),textAlign: TextAlign.center,),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 37,left: 51,right: 40),
              child:InkWell(
                child: Container(
                  height: 75.h,
                  width: 299.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff0192DA)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 14),
                    child: Text('Signin with facebook',style: TextStyle(
                        fontSize: 24.sp,fontWeight: FontWeight.w500,color: Colors.white
                    ),textAlign: TextAlign.center,),
                  ),
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 33,left: 96,right: 99),
              child:InkWell(
                child: Container(
                  height: 23.h,
                  width: 198.w,
                  child: Text('Register Your Account',style: TextStyle(
                      fontSize: 20.sp,fontWeight: FontWeight.w400,color: Color(0xff13B470)
                  ),textAlign: TextAlign.center,),
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signinview()));
                },
              ),
            ),
            ],
        ),
      )
    );
  }
}
