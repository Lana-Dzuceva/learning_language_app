import 'package:language_learning_app/model/WordCategory.dart';

class QuizBrain {
  WordCategory wordCategory;
  int _questionNumber = 0;
  int _rightAnswers = 0;
  int _wrongAnswers = 0;

  QuizBrain({required this.wordCategory});

  String getWord() {
    return wordCategory.items[_questionNumber].english;
  }

  int get rightAnswers => _rightAnswers;

  int get wrongAnswers => _wrongAnswers;

  bool get isEnd => _rightAnswers + _wrongAnswers >= wordCategory.items.length;

  bool checkTranslate(String translate) {
    bool ans = translate.toLowerCase() ==
        wordCategory.items[_questionNumber].russian.toLowerCase();
    if (ans)
      _rightAnswers++;
    else
      _wrongAnswers++;
    return ans;
  }

  void nextWord() {
    _questionNumber = (_questionNumber + 1) % wordCategory.items.length;
  }

  void restart() {
    _questionNumber = 0;
    _rightAnswers = 0;
    _wrongAnswers = 0;
  }
}
