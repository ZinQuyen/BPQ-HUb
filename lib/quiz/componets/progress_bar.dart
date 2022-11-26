import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../controller/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(children: [
              LayoutBuilder(
                  builder: (context, constraints) => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Stack(children: [
                          LayoutBuilder(
                              builder: (context, constraints) => Container(
                                    width: constraints.maxWidth *
                                        controller.animation.value,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Colors.blueGrey,
                                          Colors.white
                                        ]),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  )),
                          Positioned.fill(
                              child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${(controller.animation.value * 15).round()} sec',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset(
                                    'image/time-span.png',
                                    height: 100,
                                  )
                                ]),
                          ))
                        ]),
                      )),
            ]);
          }),
    );
  }
}
