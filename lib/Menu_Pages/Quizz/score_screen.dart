import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zidioelearningapp/Menu_Pages/Quizz/question_controller.dart';

import '../../constants.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var Get;
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      bottomSheet: kBottomSheet,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
     );
  }
}
