import 'package:date_app/Views/location%20file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class upimg extends StatefulWidget {
  const upimg({Key? key}) : super(key: key);

  @override
  State<upimg> createState() => _upimgState();
}

class _upimgState extends State<upimg> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          body:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 33,bottom:38,left: 11,right: 11),
                  child: Container(
                    height: 135.h,
                    width: 353.w,
                    child: Image.asset("assets/images/loginscreen.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:30,right:50),
                  child:Container(
                    height: 51.h,
                    width: 295.w,
                    child: Text('Upload images',style: TextStyle(
                        fontSize: 34.sp,fontWeight: FontWeight.w700,color: Color(0xff0192DA)
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30,right:36,bottom: 45),
                  child:Container(
                    height: 21.h,
                    width: 309.w,
                    child: Text('Upload a mininum of three pictures',style: TextStyle(
                        fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff626166)
                    )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 133.h,
                        width: 95.w,
                          child: Imager.fromLocal("assets/images/uploadimg.png")
                      ),
                      Container(
                        height: 133.h,
                        width: 95.w,
                          child: Imager.fromLocal("assets/images/img1.png")
                      ),
                      Container(
                        height: 133.h,
                        width: 95.w,
                          child: Imager.fromLocal("assets/images/img2.png")
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15,left: 30,right: 30,bottom: 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30,left: 5),
                        child: Container(
                          height: 133.h,
                          width: 95.w,
                            child: Imager.fromLocal("assets/images/img3.png")
                        ),
                      ),
                      Container(
                        height: 133.h,
                        width: 95.w,
                        child: Imager.fromLocal("assets/images/img4.png")
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 23,left: 94,right: 84),
                  child:InkWell(
                    child: Container(
                      height: 56.h,
                      width: 315.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff0192DA)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,bottom: 22,left: 65,right: 65),
                        child: Text('Continue',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w700,color: Colors.white
                        ),textAlign: TextAlign.center,),
                      ),
                    ),
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loc()));
                    },
                  ),
                ),
              ],
            ),
          )
      );
  }
}
