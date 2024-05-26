import 'package:language_learning_app/model/WordCategory.dart';

class QuizBrain{
  WordCategory wordCategory;
  int _questionNumber = 0;

  QuizBrain({required this.wordCategory});

  String getWord(){
    return wordCategory.items[_questionNumber].english;
  }

  bool checkTranslate(String translate){
    return translate == wordCategory.items[_questionNumber].russian;
  }

  void nextWord(){
    _questionNumber++;
  }
}