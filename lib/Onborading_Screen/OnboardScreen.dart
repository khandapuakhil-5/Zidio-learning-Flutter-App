import 'package:flutter/material.dart';

import '../Course_Screen/Home_Page/HomeScreen.dart';
import '../Course_Screen/Onborading_Screen/Onboard_content.dart';
import '../constants.dart';

class OnBoardingScreen extends StatelessWidget {

  static const String id = 'OnBoard';

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();

    return Scaffold(
      backgroundColor: Colors.pink[50],
      bottomSheet: kBottomSheet,
        body: PageView.builder(
          controller: _controller,
          itemCount: contentList.length,
          itemBuilder: (context, index) {
            final isLast = index == contentList.length - 1;
            return Column(
              children: [
                // IMAGE
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0, top: 20.0),
                  child: Image.asset('assets/onboard/${contentList[index].img}.jpeg', width: 360.0, height: 360.0,),
                  //child: Lottie.asset('assets/onboard/${contentList[index].lottie}.json', width: 360, height: 360),
                ), const SizedBox(height: 4.0,),


                // TITLE
                Expanded(
                  child: Text(
                    contentList[index].title, //title
                    style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.5,
                    ),
                  ),
                ),
                //SUBTITLE
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0,),
                    child:  Text(
                      contentList[index].subtitle,//subtitle
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13.5,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ), const SizedBox(height: 48.0,),


                // DOTS
                Expanded(
                  child: Wrap(
                    spacing: 10.0,// dots space
                    children: List.generate(
                      contentList.length, (i) => Container(
                      height: 8.0,
                      width: i == index ? 20.0 : 8.0 ,//SIZE TO CHANGE DOTS COLOR AND SIZE
                      decoration: BoxDecoration(
                        color: i == index ? Colors.pink : Colors.blue,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    ),
                  ),
                ), const SizedBox(height: 16.0,),


                // BUTTON
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,//
                      backgroundColor: Colors.pink[600], //button bgcolor
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),),
                      minimumSize: const Size(196.0,52.0),
                    ),
                    onPressed: () {
                      if(isLast) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                      }else {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn
                        );
                      }
                    },
                    child: Text(
                      isLast ? 'Get Started' : 'Next',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Spacer(), // IT CREATES EMPTY SPACE BETWEEN THE WIDGETS
              ],
            );
          },
        ),
    );
  }
}