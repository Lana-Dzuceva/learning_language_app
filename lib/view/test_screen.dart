import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:language_learning_app/quiz_brain.dart";
import "package:language_learning_app/view/temp.dart";

import "../model/WordCategory.dart";
import "../widgets/card_side.dart";

class TestScreen extends StatefulWidget {
  WordCategory testWords;

  TestScreen({super.key, required this.testWords});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  TextEditingController textEditingController = TextEditingController();
  late QuizBrain quizBrain;
  List<Widget> scoreKeeper = [];

  @override
  void initState() {
    super.initState();
    quizBrain = QuizBrain(wordCategory: widget.testWords);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardSide(text: quizBrain.getWord()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  controller: textEditingController,
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40))),
                onPressed: () {
                  bool verdict =
                      quizBrain.checkTranslate(textEditingController.text);
                  if (verdict) {
                    scoreKeeper.add(const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.green,
                    ));
                  } else {
                    scoreKeeper.add(const Icon(
                      Icons.close,
                      size: 16,
                      color: Colors.red,
                    ));
                  }
                  if(quizBrain.isEnd){
                    _showResultDialog(context, correctAnswers: quizBrain.rightAnswers, incorrectAnswers: quizBrain.wrongAnswers);
                    quizBrain.restart();
                    scoreKeeper.clear();
                  }
                  else{
                    quizBrain.nextWord();
                  }
                  textEditingController.clear();
                  setState(() {});
                },
                child: const Text(
                  "press",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              // Expanded(child: SizedBox(height: double.infinity,)),

              SingleChildScrollView(
                  child: Row(
                children: scoreKeeper,
              )),
            ],
          ),
        ),
      ),
    );
  }

  void _showResultDialog(BuildContext context, {required int correctAnswers, required int incorrectAnswers}) {
    final totalAnswers = correctAnswers + incorrectAnswers;
    final double correctPercentage = (correctAnswers / totalAnswers) * 100;
    String message;

    if (correctPercentage == 100) {
      message = "🎉 Отлично! Все ответы правильные!";
    } else if (correctPercentage >= 75) {
      message = "👏 Очень хорошо! Большинство ответов правильные!";
    } else if (correctPercentage >= 50) {
      message = "🙂 Хорошо! Половина ответов правильные!";
    } else {
      message = "🙁 Не отчаивайтесь! Попробуйте еще раз!";
    }
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Игра завершена'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Правильных ответов: $correctAnswers'),
                Text('Неправильных ответов: $incorrectAnswers'),
                const SizedBox(height: 20),
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Закрыть'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
