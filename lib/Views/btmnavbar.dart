import 'package:date_app/Views/location%20file.dart';
import 'package:date_app/Views/login.dart';
import 'package:date_app/Views/profile.dart';
import 'package:date_app/Views/sign%20in.dart';
import 'package:flutter/material.dart';

import 'discover.dart';
class btmbar extends StatefulWidget {
  const btmbar({Key? key}) : super(key: key);

  @override
  State<btmbar> createState() => _btmbarState();
}

class _btmbarState extends State<btmbar> with TickerProviderStateMixin{
  late TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController( vsync:this,length: 4);
  }
  @override

  Widget build(BuildContext context) {
    return
      Scaffold(

        bottomNavigationBar: bottomnav(),
        body: TabBarView(
          controller: _tabController,
          children: [
            discoverpage(),
            loc(),
            login(),
            profilepage(),

          ],
        ),
      );
  }
  bottomnav(){
    return  Container(
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=0;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children:[
                              Icon(
                                  Icons.file_copy,
                                  color: Color(0xff13B470)
                              ),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=1;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: [
                              Icon(
                                  Icons.location_on_rounded,
                                  color: Color(0xff13B470)
                              ),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _tabController.index=2;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: [
                              Icon(
                                  Icons.textsms_sharp,
                                  color: Color(0xff13B470)
                              ),
                            ])))),

            Container(
                height: 60,
                color: Colors.white,
                child: InkWell(
                    onTap: ()  {
                      setState(() {
                        _tabController.index=3;
                      });
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                            children: <Widget>[
                              Icon(
                                  Icons.person,
                                  color: Color(0xff13B470)
                              ),
                            ]))))]),
    );
  }
}