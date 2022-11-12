
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../controller/question_controller.dart';
import '../componets/question_card.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  get sample_data => '';

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Image.asset(
          'image/b.png',
          height: 900,
          fit: BoxFit.fill,
        ),
        SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ProgressBar(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text.rich(
                TextSpan(
                    text: "Question 1",
                    style: TextStyle(color: Colors.white , fontSize: 50),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ]),
              ),
            ),
            Divider(thickness: 1.5),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: PageView.builder(
                    itemCount: _questionController.questions.length,
                    itemBuilder: ((context, index) => QuestionCard(
                          question: _questionController.questions[index],


                          
                        ))))
          ]),
        )
      ],
    );
  }
}
