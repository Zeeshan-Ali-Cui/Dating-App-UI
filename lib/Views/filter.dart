import 'package:date_app/Views/Dating%20matches.dart';
import 'package:date_app/Views/btmnavbar.dart';
import 'package:date_app/Views/discover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class filterview extends StatefulWidget {
  const filterview({Key? key}) : super(key: key);

  @override
  State<filterview> createState() => _filterviewState();
}

class _filterviewState extends State<filterview> {
  String dropdownvalue = 'Make New Friends';

  // List of items in our dropdown menu
  var items = [
    'Make New Friends',
    'Yes',
    'No',
  ];
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
                              padding: const EdgeInsets.only(top:29,left: 27,right: 289),
                              child: IconButton(onPressed:(){
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) => btmbar(),
                                    )
                                );
                              }, icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xff06A864),
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              height: 25.h,
                              child:  Icon(
                                Icons.refresh_rounded,
                                color: Color(0xff06A864),
                                size: 30,
                              ),),
                          ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:159),
                      child:Container(
                        height: 35.h,
                        width: 209.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Filter Options',style: TextStyle(
                            fontSize: 30.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                        ),textAlign: TextAlign.center,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:22,right:9),
                      child:Container(
                        height: 52.h,
                        width: 365.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Manage and set your preferences '
                            'to find the best matches for you,'
                            ' keep enjoying!',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff6A6363)
                        )),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:309),
                      child:Container(
                        height: 24.h,
                        width: 59.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Here to',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:261),
                      child:Container(
                        height: 24.h,
                        width: 107.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Want to Meet',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:202),
                      child:Container(
                        height: 24.h,
                        width: 166.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Preferred Age Range',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:189),
                      child:Container(
                        height: 24.h,
                        width: 174.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Preferred Language(s)',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:299),
                      child:Container(
                        height: 24.h,
                        width: 69.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Location',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:30,left:22,right:243),
                      child:Container(
                        height: 24.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text('Distance Range',style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                        )),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                        child:
                        Container(
                          width: 350.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff13B470)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20,right: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropdownvalue,
                                items: items.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropdownvalue = value.toString();
                                  });
                                },icon: Padding(
                                  padding: EdgeInsets.only(left: 200,),
                                  child: Icon(Icons.arrow_drop_down,)),
                                // hint: Text(''),
                              ),
                            ),
                          ),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:104,bottom: 42,left: 89,right: 89),
                      child:InkWell(
                        child: Container(
                          height: 65.h,
                          width: 212.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Color(0xff0192DA)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 22,left: 49,right: 48),
                            child: Text('Apply Filters',style: TextStyle(
                                fontSize: 18.sp,fontWeight: FontWeight.w600,color: Colors.white
                            ),textAlign: TextAlign.center,),
                          ),
                        ),
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>datingmatch()));
                        },
                      ),
                    ),

                  ],
                ),
              )));
  }
}
