import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../model/question.dart';

class QuestionController extends GetxController
// ignore: deprecated_member_use
with SingleGetTickerProviderMixin
{
  
late AnimationController _animationController;
late Animation _animation;
Animation get animation => this._animation;

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
  _animationController.forward(); // start our animation
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

} 
}