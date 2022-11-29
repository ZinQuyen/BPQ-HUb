import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../model/question.dart';
import 'package:phan04_baitap1/score/score.dart';

class QuestionController extends GetxController
// ignore: deprecated_member_use
with SingleGetTickerProviderMixin
{
  
late AnimationController _animationController;
late Animation _animation;
Animation get animation => this._animation;
late PageController _pageController;
  PageController get pageController => this._pageController;


// List<Question> _question = 
List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();

List<Question> get questions => this._questions;
bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;



@override
void onInit() {
  _animationController = AnimationController(duration: Duration(seconds: 15),vsync: this);
  _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)..addListener(() {update();});
  _animationController.forward().whenComplete(nextQuestion); // start our animation
_pageController = PageController();

  super.onInit();
}

void checkAns (Question question , int selectedIndex)
{
  _isAnswered = true; 
_correctAns = question.answer;
_selectedAns = selectedIndex;


if (_correctAns == _selectedAns) _numOfCorrectAns++;
_animationController.stop();
update();

Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
} 
void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}