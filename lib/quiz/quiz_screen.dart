import 'package:get/get.dart';
import 'package:phan04_baitap1/controller/question_controller.dart';

import '../quiz/componets/body.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blueAccent;
      }
      return Colors.white;
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith(getColor),
      ),
              onPressed: _controller.nextQuestion,
              child: Text("Skip"))
        ],
      ),
      body: Body(),
    );
  }
}

