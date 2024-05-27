import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/data.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/model/word.dart';
import 'package:language_learning_app/view/temp.dart';
import 'package:language_learning_app/model/word.dart';
import 'package:language_learning_app/view/test_screen.dart';

import '../training_types_enum.dart';
import '../widgets/category_button.dart';
import 'all_words_screen.dart';
import 'learning_words_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
  final TrainingTypes trainingType;

  const ChooseCategoryScreen({super.key, required this.trainingType});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<WordCategory> wordList = [
    category1,
    WordCategory(title: "Numbres2", items: [], totalProgress: 10),
    WordCategory(title: "Numbres3", items: [], totalProgress: 10),
    WordCategory(title: "Numbres4", items: [], totalProgress: 10),
    WordCategory(title: "Numbres5", items: [], totalProgress: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: ListView.builder(
          itemCount: wordList.length,
          itemBuilder: (context, i) {
            return CategoryButton(
              title: wordList[i].title,
              onTap: () {
                switch (widget.trainingType) {
                  case TrainingTypes.learn:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearningWordsScreen(
                          wordCategory: wordList[i],
                        ),
                      ),
                    );
                    break;
                  case TrainingTypes.checkYourself:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestScreen(
                          testWords: wordList[i],
                        ),
                      ),
                    );
                    break;
                  default:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllWordsScreen(
                          wordCategory: wordList[i],
                        ),
                      ),
                    );
                }
              },
              progress: wordList[i].totalProgress,
            );
          },
        ),
      )),
    );
  }
}
