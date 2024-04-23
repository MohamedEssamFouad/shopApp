import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widgets/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, child) {
      child:
      return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFCEDDEE),
        ),
        debugShowCheckedModeBanner: false,

        home: LoginPage(),
      );
    },
    );
  }
}

