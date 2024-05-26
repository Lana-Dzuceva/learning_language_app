import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/model/word.dart';
import 'package:language_learning_app/view/temp.dart';
import 'package:language_learning_app/model/word.dart';

import '../widgets/category_button.dart';
import 'learning_words_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<WordCategory> wordList = [
    WordCategory(
        title: "food",
        items: [
          Word(
              english: 'pizza',
              russian: 'пица',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'cucumber',
              russian: 'огурец',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'tomato',
              russian: 'помидор',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'hren',
              russian: 'хрен',
              countViews: 0,
              progress: '',
              isLearned: false),
        ],
        totalProgress: 10),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LearningWordsScreen(
                            // wordCategory: wordList[i],
                          ),
                        ));
                  },
                  progress: wordList[i].totalProgress,
                );
              },
            ),
          )),
    );
  }
}

