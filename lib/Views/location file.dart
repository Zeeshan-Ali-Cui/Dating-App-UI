import 'package:date_app/Views/Upload%20Images.dart';
import 'package:date_app/Views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class loc extends StatefulWidget {
  const loc({Key? key}) : super(key: key);

  @override
  State<loc> createState() => _locState();
}

class _locState extends State<loc> {
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
                          padding: const EdgeInsets.only(left: 24,right: 283),
                          child: IconButton(onPressed:(){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => upimg(),
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
                    padding: EdgeInsets.only(top: 161,bottom: 10,left: 128,right:128),
                    child:Container(
                      height: 45.h,
                      width: 158.w,
                      child: Text('Location',style: TextStyle(
                          fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 37,right:36,bottom: 56),
                    child:Container(
                      height: 20.h,
                      width: 541.w,
                      child: Text('Let the app locate you to provide'
                          ' best searched results around you',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff626166)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 33,right:248,bottom: 15),
                    child:Container(
                      height: 20.h,
                      width: 133.w,
                      child: Text('Current Location',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff626166)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32,right: 32,bottom: 30),
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
                                padding: EdgeInsets.only(left: 31,right: 50),
                                child: Text("Kenwood Place, Florida, US..",style: TextStyle(fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),)
                            ),
                            Container(
                                child: Icon(Icons.my_location,color: Color(0xff13B470),)
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32,right: 32,bottom: 69),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      child: Card (
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Color(0xff13B470)),
                          borderRadius: BorderRadius.all(Radius.circular(60),
                          ),
                        ),
                       child: TextField(
                            decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Color(0xff06A864)), //<-- SEE HERE
                            borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.white,
                            labelText: 'Search New Location',
                            suffixIcon: Icon(Icons.search,color: Color(0xff06A864),)
                            )),
                       ),
                      ),
                    ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 131,left: 101,right: 101),
                    child:InkWell(
                      child: Container(
                        height: 65.h,
                        width: 212.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => profilepage()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 107,right: 108,bottom: 73),
                    child: Container(
                        height: 27.h,
                        width: 199.w,
                        child: Imager.fromLocal("assets/images/goo.png")
                    ),
                  ),
                ],
              ),
            )
        ),
      );
  }
}
