import 'package:date_app/Views/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/datematchmodel.dart';
class datingmatch extends StatefulWidget {
  const datingmatch({Key? key}) : super(key: key);

  @override
  State<datingmatch> createState() => _datingmatchState();
}

class _datingmatchState extends State<datingmatch> {
  List<chatm> chat = [
    chatm("Zeeshan", "assets/images/profile.png"),
    chatm("Ali", "assets/images/profile.png"),
    chatm("Asim", "assets/images/profile.png"),
    chatm("Umer", "assets/images/profile.png"),
    chatm("Sami", "assets/images/profile.png"),
    chatm("Zia", "assets/images/profile.png"),
    chatm("Azib", "assets/images/profile.png"),
    chatm("Abdullah", "assets/images/profile.png"),
    chatm("Haider", "assets/images/profile.png"),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
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
                              padding: const EdgeInsets.only(top:20,left: 20,right: 340),
                              child: IconButton(onPressed:(){
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) => filterview(),
                                    )
                                );
                              }, icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xff06A864),
                              ),),
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:25,left:29,right:102),
                      child:Container(
                        height: 47.h,
                        width: 283.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Dating Matches',style: TextStyle(
                            fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:30,right:19),
                      child:Container(
                        height: 22.h,
                        width: 365.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Check out lists of matches & keep enjoing',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff6A6363)
                        )),
                      ),
                    ),
                    Container(
                      height: 750.h,
                      child: DefaultTabController(
                          length: 4,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                child: TabBar(
                                  indicatorColor: Color(0xff13B470),
                                  labelColor: Color(0xff13B470),
                                  unselectedLabelColor: Color(0xff0192DA),
                                  tabs: [
                                  Tab(text: 'ALL'),
                                  Tab(text: 'You Liked'),
                                  Tab(text: 'Liked You'),
                                  Tab(text: 'Views'),
                                  ],),),
                              Expanded(
                                  child: TabBarView(
                                    children: [
                                      ListView.builder(
                                          itemCount: chat.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (context, i) {
                                            return
                                              Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: SizedBox(
                                                  height: 101.h,
                                                  width: 351.w,
                                                  child: Card(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          child: CircleAvatar(
                                                            radius: 35,
                                                              backgroundColor: Colors.white,
                                                              child: (
                                                                  Image.asset(chat[i].image!)
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                child: (
                                                                    Text(chat[i].name!, style: TextStyle(color: Color(0xff0192DA) ,fontSize: 16,
                                                                    fontWeight: FontWeight.w600))
                                                                ),
                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("Found from matches proposal",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                    ))
                                                                ),

                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("12:20 AM  |  29.04.2021",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:EdgeInsets.only(left: 50),
                                                          child: Icon(Icons.keyboard_control,color: Color(0xff0192DA),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                          }),
                                      ListView.builder(
                                          itemCount: chat.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (context, i) {
                                            return
                                              Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: SizedBox(
                                                  height: 101.h,
                                                  width: 351.w,
                                                  child: Card(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          child: CircleAvatar(
                                                              radius: 35,
                                                              backgroundColor: Colors.white,
                                                              child: (
                                                                  Image.asset(chat[i].image!)
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                child: (
                                                                    Text(chat[i].name!, style: TextStyle(color: Color(0xff0192DA) ,fontSize: 16,
                                                                        fontWeight: FontWeight.w600))
                                                                ),
                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("Found from matches proposal",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("12:20 AM  |  29.04.2021",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:EdgeInsets.only(left: 50),
                                                          child: Icon(Icons.keyboard_control,color: Color(0xff0192DA),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                          }),
                                      ListView.builder(
                                          itemCount: chat.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (context, i) {
                                            return
                                              Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: SizedBox(
                                                  height: 101.h,
                                                  width: 351.w,
                                                  child: Card(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          child: CircleAvatar(
                                                              radius: 35,
                                                              backgroundColor: Colors.white,
                                                              child: (
                                                                  Image.asset(chat[i].image!)
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                child: (
                                                                    Text(chat[i].name!, style: TextStyle(color: Color(0xff0192DA) ,fontSize: 16,
                                                                        fontWeight: FontWeight.w600))
                                                                ),
                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("Found from matches proposal",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("12:20 AM  |  29.04.2021",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:EdgeInsets.only(left: 50),
                                                          child: Icon(Icons.keyboard_control,color: Color(0xff0192DA),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                          }),
                                      ListView.builder(
                                          itemCount: chat.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (context, i) {
                                            return
                                              Padding(
                                                padding: const EdgeInsets.all(16.0),
                                                child: SizedBox(
                                                  height: 101.h,
                                                  width: 351.w,
                                                  child: Card(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          child: CircleAvatar(
                                                              radius: 35,
                                                              backgroundColor: Colors.white,
                                                              child: (
                                                                  Image.asset(chat[i].image!)
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(left: 20.0, right: 20.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                child: (
                                                                    Text(chat[i].name!, style: TextStyle(color: Color(0xff0192DA) ,fontSize: 16,
                                                                        fontWeight: FontWeight.w600))
                                                                ),
                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("Found from matches proposal",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                              Container(
                                                                child: (
                                                                    Text("12:20 AM  |  29.04.2021",
                                                                        style: TextStyle(color: Colors.grey ,fontSize: 15
                                                                        ))
                                                                ),

                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:EdgeInsets.only(left: 50),
                                                          child: Icon(Icons.keyboard_control,color: Color(0xff0192DA),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                          }),
                                    ],),),],),)),




                  ],
                ),
              )));
  }
}
