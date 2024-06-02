import "package:flutter/material.dart";
import "package:language_learning_app/quiz_brain.dart";

import "../model/WordCategory.dart";

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
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {},
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("press", style: TextStyle(fontSize: 14),),
              )
            ],
          ),
        ),
      ),
    );
  }
}