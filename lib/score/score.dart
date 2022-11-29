import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:phan04_baitap1/controller/question_controller.dart';
import 'package:phan04_baitap1/screens/Home.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        onPressed: (() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyWidget(title: 'BPQ HUB')));
        }),
        icon: Icon(Icons.arrow_back),
      )),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("image/b.png", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Colors.green),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.green),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}