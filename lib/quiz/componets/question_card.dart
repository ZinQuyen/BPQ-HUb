import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phan04_baitap1/controller/question_controller.dart';
import '../../model/question.dart';
import 'body.dart';
import 'option.dart';


class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,

    required this.question,
  }) : super(key: key);
  

  final Question question;
  
  
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
        child: Column(
          children: [
            Text(
             question.question,
              style: TextStyle(color: Colors.grey, fontSize: 30)
            ),
            SizedBox(height: 10 / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
          ],
        ),
    );
  }
}