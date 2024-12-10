import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:zidioelearningapp/Menu_Pages/Quizz/question_controller.dart';
import '../../constants.dart';
import 'compenents/body.dart';


class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // var Get;
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded)
        ),
      ),
      body: Body(),
      bottomSheet: kBottomSheet,
    );
  }
}
