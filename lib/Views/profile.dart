import 'package:date_app/Views/btmnavbar.dart';
import 'package:date_app/Views/location%20file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imager/imager.dart';
import 'package:intl/intl.dart';

import 'Upload Images.dart';
class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  // Initial Selected Value
  String dropdownvalue = 'Male';

  // List of items in our dropdown menu
  var items = [
    'Male',
    'Female',
    'Other',
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
                          padding: const EdgeInsets.only(left: 24,right: 283),
                          child: IconButton(onPressed:(){
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => loc(),
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
                    padding: EdgeInsets.only(top: 23,bottom: 13,left: 66,right:66),
                    child:Container(
                      height: 36.h,
                      width: 258.w,
                      child: Text('Profile Details',style: TextStyle(
                          fontSize: 36.sp,fontWeight: FontWeight.w600,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 37,right:36,bottom: 56),
                    child:Container(
                      height: 22.h,
                      width: 245.w,
                      child: Text('Fill up the following details',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff626166)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left:142,right:126,bottom: 35),
                                  child: Imager.fromLocal("assets/images/profile.png",height: 125.h,width: 122.w)
                              ),
                              Positioned(
                                  bottom: 35,
                                  right: 126,
                                  child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xff33B27D),
                                      child: Icon(Icons.camera_alt,size: 20,color: Colors.white,)))
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 23,right:279,bottom:9),
                    child:Container(
                      height: 24.h,
                      width: 88.w,
                      child: Text('First Name',style: TextStyle(
                          fontSize: 16.sp,fontWeight: FontWeight.w500,color: Color(0xff0192DA)
                      ),textAlign: TextAlign.center,),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                    child: Container(
                      height: 61.h,
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
                                labelText: 'First Name',
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                    child: Container(
                      height: 61.h,
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
                              labelText: 'Last Name',
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                    child: Container(
                      height: 61.h,
                      width: 350.w,
                      child: Card (
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Color(0xff13B470)),
                          borderRadius: BorderRadius.all(Radius.circular(60),
                          ),
                        ),
                        child: TextField(
                            readOnly: true,
                            controller: dateController,
                            decoration: InputDecoration(hintText: 'Pick your Date',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Color(0xff13B470)), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              filled: true, //<-- SEE HERE
                              fillColor: Colors.white,
                              suffixIcon: InkWell(child: Icon(Icons.calendar_month),
                                onTap: ()async{
                                  var date = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2100));
                                  if (date != null) {
                                    dateController.text = DateFormat('MM/dd/yyyy').format(date);
                                  }
                                },
                              )
                            )),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
                    child:
                    Container(
                      width: 350.w,
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
                              padding: EdgeInsets.only(left: 270,),
                              child: Icon(Icons.arrow_drop_down,)),
                            // hint: Text(''),
                          ),
                        ),
                      ),)
                  ),




                  Padding(
                    padding: EdgeInsets.only(bottom: 42,left: 89,right: 89),
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => btmbar()));
                      },
                    ),
                  ),

                 ] ),
              ),
            )
      );
  }
}
