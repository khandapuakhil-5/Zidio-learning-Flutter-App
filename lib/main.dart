import 'package:flutter/material.dart';
import 'Course_Screen/Course_page.dart';
import 'Course_Screen/Home_Page/HomeScreen.dart';
import 'Course_Screen/LoginFeatures/screens/widget/login.dart';
import 'Course_Screen/Splash_screen/splash.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        Homescreen.id:(context)=>Homescreen(),
        CoursePage.id:(context)=>CoursePage(),
        LoginPAge.id:(context) => LoginPAge(),
      },
    );

  }
}

