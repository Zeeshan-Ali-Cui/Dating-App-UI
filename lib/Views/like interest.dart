import 'package:date_app/Views/onetimepassword.dart';
import 'package:date_app/Views/uploadid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
class likeinterest extends StatefulWidget {
  const likeinterest({Key? key}) : super(key: key);

  @override
  State<likeinterest> createState() => _likeinterestState();
}

class _likeinterestState extends State<likeinterest> {

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
                                MaterialPageRoute(builder: (context) => otpview(),
                                )
                            );
                          }, icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xff06A864),
                          ),),
                        ),
                        Container(
                          height: 25.h,
                          child: Text("Skip",style: TextStyle(
                              fontSize: 18.sp,fontWeight: FontWeight.w600,color: Color(0xff13B470)
                          ),textAlign: TextAlign.center,)
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 17,bottom: 33,left: 42,right:71),
                    child:Container(
                      height: 40.h,
                      width: 277.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('Likes, Interests',style: TextStyle(
                          fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right:35),
                    child:Container(
                      height: 47.h,
                      width: 335.w,
                      child: Text('Share your likes & passion with others',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff626166)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Container(
                    height: 550.h,
                    padding: EdgeInsets.only(left:11,right: 10),
                    child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          childAspectRatio: (1 / .5)
                        ),
                        children: [
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/Cam.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Photography")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/cook.png",height: 18.15.h)
                                ),
                                Container(
                                  padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Cooking")
                                ),

                              ],
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/Video.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Video Game")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/music.png",height: 18.15.h)
                                ),
                                Container(
                                    padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Music")
                                ),

                              ],
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/trav.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Travelling")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/Shopping.png",height: 18.15.h)
                                ),
                                Container(
                                    padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Shopping")
                                ),

                              ],
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/Speeches.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Speeches")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/art.png",height: 18.15.h)
                                ),
                                Container(
                                    padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Art and Craft")
                                ),

                              ],
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/Swimming.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Swimming")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/Drinking.png",height: 18.15.h)
                                ),
                                Container(
                                    padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Drinking")
                                ),

                              ],
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: SizedBox(
                              height: 68.h,
                              width: 175.w,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.only(right: 90,top: 25),
                                      child: Imager.fromLocal("assets/images/extreme sport.png",height: 18.15.h)
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(top:8.3,bottom: 10),
                                      child: Text("Extreme Sport")
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Card (
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(60))
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.only(right: 90,top: 25),
                                    child: Imager.fromLocal("assets/images/fitness.png",height: 18.15.h)
                                ),
                                Container(
                                    padding: EdgeInsets.only(top:8.3,bottom: 10),
                                    child: Text("Fitness")
                                ),

                              ],
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 110,left: 89,right: 89),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => impid()));
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
