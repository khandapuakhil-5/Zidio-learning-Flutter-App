import 'dart:core';
import 'package:flutter/material.dart';
import '../Course_Screen/Coursescreen.dart';
import '../Course_Screen/Home_Page/MenuIcons.dart';
import '../Course_Screen/Home_Page/See_all.dart';
import '../Course_Screen/Profile/Profile_page.dart';
import '../Menu_Pages/Achievement/Achievement.dart';
import '../Menu_Pages/Assignments/AssignmentPage.dart';
import '../Menu_Pages/Quizz/welcome_screen.dart';
import '../Menu_Pages/Store/Store.dart';
import '../constants.dart';

class Homescreen extends StatelessWidget {
  static const String id = 'home_screen';

  //STATIC ICON NAMES AND ICONS
  List optNames = [
    "Quizz",
    "Classes",
    "Free Course",
    "Store",
    "Live Course",
    "Score board"
  ];
  List<Icon> optIcons = [
    const Icon(Icons.category, size: 30,),
    const Icon(Icons.video_library, size: 30,),
    const Icon(Icons.assignment, size: 30,),
    const Icon(Icons.store, size: 30,),
    const Icon(Icons.live_tv, size: 30,),
    const Icon(Icons.emoji_events, size: 30,),
  ];

  //Courses
  List courseList = ["Python", "C", "Java", "Github", "AppDev"];

  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink[400],
        elevation: 20.0,
        title: Container(
          child: Row(
            children: [
              // width: 36.0, height: 50.0,
              Image.asset(
                'assets/images/logo.jpeg', width: 36.0, height: 50.0,),
              const SizedBox(width: 8.0,),
              const Column(
                children: [
                  SizedBox(height: 2.0,),
                  Text("ZIDIO LEARNING",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.5,
                      wordSpacing: 1.5,
                      letterSpacing: 1.25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 2.0, bottom: 2.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                overlayColor: Colors.blue,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ProfilePage()
                )
                );
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 29.5,
                  ),
                  Text(
                    "Profile", style: TextStyle(fontWeight: FontWeight.w500),)
                ],
              ),
              //child: const Text("Profile"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 40.0, left: 24.0, right: 24.0,),
                    decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff1D1617).withOpacity(0.15),
                          blurRadius: 40.0,
                          spreadRadius: 0.8,
                        ),
                      ],
                    ),

                    child: TextField(
                      onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2.0, color: Colors.blue),),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(12.0),
                        hintText: 'Search Course',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //OPTIONS   AND ICONS
            const SizedBox(height: 6.0,),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  //GRIDVIEW.BUILDER
                  Row(
                    children: [
                      MenuIcons(title: "Quizz", imageAsset: 'assets/menus/quiz.png',
                          onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));}
                      ),
                      MenuIcons(title: "Store", imageAsset: 'assets/menus/book.png',
                          onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const StoreScreen()));}
                      ),
                      MenuIcons(title: "Courses", imageAsset: 'assets/menus/learn.png',
                          onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeAll()));}
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0,),
                  Row(
                    children: [
                      MenuIcons(title: "Assignments", imageAsset: 'assets/menus/assign.png',
                          onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const Assignmentpage()));}
                      ),
                      MenuIcons(title: "Achievements", imageAsset: 'assets/menus/certificate.png',
                          onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const AchievementPage()));}
                      ),
                    ],
                  ),


                  const SizedBox(height: 6.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Courses",
                        style: TextStyle(
                            fontSize: 21.5,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      InkWell(
                        child:  const Text("See all",
                          style: TextStyle(
                              fontSize: 16.5,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAll()));
                        },
                      ),

                    ],
                  ),


                  //COURSES
                  const SizedBox(height: 12.0,),
                  GridView.builder(
                    itemCount: courseList.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      //COURSES CARD SPACE
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) =>
                                  Coursescreen(courseList[index])
                          ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  "assets/images/${courseList[index]}.png",
                                  //COURSE IMAGES
                                  width: 72.0, height: 72.0,
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              Text(courseList[index], //COURSE IMAGE TEXT
                                style: TextStyle(
                                  fontSize: 18.5,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 4.0,),
                              Text(
                                "24 Hours", //COURSESSSE IMAGE TEXTT BELOW TEXT
                                style: TextStyle(
                                  fontSize: 9.5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),


                ],
              ),
            ),


          ],
        ),
      ),



      bottomSheet: kBottomSheet,


    );
  }
}










