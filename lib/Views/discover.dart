import 'package:date_app/Views/filter.dart';
import 'package:date_app/Views/uploadid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';

import 'onetimepassword.dart';
class discoverpage extends StatefulWidget {
  const discoverpage({Key? key}) : super(key: key);

  @override
  State<discoverpage> createState() => _discoverpageState();
}

class _discoverpageState extends State<discoverpage> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body:SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top:20,left: 32,right: 276),
                          child: IconButton(onPressed:(){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => otpview(),
                                )
                            );
                          }, icon: Icon(
                            Icons.qr_code_outlined,
                            color: Color(0xff06A864),
                          ),),
                        ),
                        InkWell(
                          child: Container(
                              height: 25.h,
                              child:  Icon(
                            Icons.upcoming,
                            color: Color(0xff06A864),
                          ),),
                          onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => filterview() ));}
                        ),
                     ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 29,left:146,right:146),
                    child:Container(
                      height: 29.h,
                      width: 98.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Discover',style: TextStyle(
                          fontSize: 24.sp,fontWeight: FontWeight.w700,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:156,right:156,bottom: 30),
                    child:Container(
                      height: 14.h,
                      width: 78.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Houston, USA',style: TextStyle(
                          fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xff64676B)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:28,left:10,right: 10,bottom: 75 ),
                    child: Container(
                        height:560.h,
                        width: 380.w,
                        child: Imager.fromLocal("assets/images/discover.png")
                    ),
                  ),
                ],
              ),
            )));

  }
}
