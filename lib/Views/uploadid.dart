import 'package:date_app/Views/Upload%20Images.dart';
import 'package:date_app/Views/like%20interest.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class impid extends StatefulWidget {
  const impid({Key? key}) : super(key: key);

  @override
  State<impid> createState() => _impidState();
}

class _impidState extends State<impid> {
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
                          padding: const EdgeInsets.only(left: 20,right: 283),
                          child: IconButton(onPressed:(){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => likeinterest(),
                                )
                            );
                          }, icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xff06A864),
                          ),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 17,bottom: 20,left: 101,right:101),
                    child:Container(
                      height: 45.h,
                      width: 188.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Upload ID',style: TextStyle(
                          fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 37,right:36,bottom: 40),
                    child:Container(
                      height: 89.h,
                      width: 317.w,
                      child: Text('We strongly give full freedom to our users,'
                          ' but to avoid any kind of mishap & nuisance we reccomend'
                          ' you to provide a ID proof for safety & security',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff626166)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 16,bottom: 43),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      child: Card (
                        shape: RoundedRectangleBorder(side: BorderSide(
                                color: Color(0xff13B470)),
                          borderRadius: BorderRadius.all(Radius.circular(60),
                              ),
                            ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 31,right: 241),
                                child: Text("ID Proof",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),)
                            ),
                            Container(
                                child: Icon(Icons.arrow_drop_down)
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 43,left: 24,right: 16),
                    child: Container(
                      height: 350.h,
                      width: 350.w,
                      child: Card (
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),

                        child: DottedBorder(
                          color: Color(0xff13B470),
                          borderType: BorderType.RRect,
                          radius: Radius.circular(30),
                          dashPattern: [10,5,10,5,10,5],
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(right: 145,left:145,top: 109),
                                  child: Imager.fromLocal("assets/images/upload.png",height: 93.15.h)
                              ),
                              Container(
                                  padding: EdgeInsets.only(top:18,bottom: 10),
                                  child: Text("Upload Document",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22.sp,
                                      color: Color(0xff0192DA)),)
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 23,left: 94,right: 84),
                    child:InkWell(
                      child: Container(
                        height: 65.h,
                        width: 212.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff0192DA)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 22,left: 65,right: 65),
                          child: Text('Continue',style: TextStyle(
                              fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white
                          ),textAlign: TextAlign.center,),
                        ),
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => upimg()));
                      },
                    ),
                  ),
                ],
              ),
            )
        ),
      );
  }
}
