import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => login(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      AnnotatedRegion
      <SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: Colors.white),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Center(
                child: Image.asset("assets/images/logo.png")
            ),
          ),
          ),
        );
  }
}
