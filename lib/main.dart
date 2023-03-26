import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Views/Splash Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {

          return MaterialApp(
            title: 'Dating App',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'assets/fonts/Inter-VariableFont_slnt,wght.ttf'
            ),
            home: child,
            debugShowCheckedModeBanner: false,
          );
        },
        child: const splashscreen(),
      );
  }
}
