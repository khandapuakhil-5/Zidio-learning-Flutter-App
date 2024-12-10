import 'package:flutter/material.dart';

class OnboardContents {
  final String img;
  final String title;
  final String subtitle;

  OnboardContents({ required this.img, required this.title, required this.subtitle});

}

final contentList =  [
  //screen 1 content
  OnboardContents(
    img: 'screen1',// image name in assets/onboard folder
    title: 'Welcome to Zidio Learning',
    subtitle: 'Our platfrom offers Comprehesive online training and internship,',
  ),
  //screen 2 content // we can add any no of contents
  OnboardContents(
    img: 'screen2',
    title: 'What you can do here?',
    subtitle: 'Discover the future professional development here!,'
        ' We provide a structured, industry-focused appraoch to learning.'
    ,
  ),
  OnboardContents(
    img: 'screen3',
    title: 'Get Started',
    subtitle: 'We deliver focus on innovatoin and commitment.'
        ' Click on "Get Started" to continue!',
  ),

];