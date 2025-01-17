import 'package:flutter/material.dart';
import 'package:zidioelearningapp/Menu_Pages/Quizz/Questions.dart';
import '../../../constants.dart';
import '../question_controller.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {

  //const QuestionCard({required Key key, required this.question});

  //final Question question;

  const QuestionCard({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    var Get;
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question,index),
            ),
          ),
        ],
      ),
    );
  }
}
