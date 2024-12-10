import 'package:flutter/material.dart';

import '../Course_Screen/Coursescreen.dart';

class SeeAll extends StatelessWidget {
  SeeAll({super.key});
  List courseList = ["Python", "C", "Java", "Github", "AppDev", "SQL", "Figma", "Soon"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[400],
        title: const Text("Available Courses",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18.5,
            wordSpacing: 1.5,
            letterSpacing: 1.25,
          ),
        ),
        centerTitle: true,
        elevation: 20.0,
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
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
      ),



    );
  }
}
