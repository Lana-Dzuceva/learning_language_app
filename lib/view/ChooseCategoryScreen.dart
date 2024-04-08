import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/view/temp.dart';

import 'learning_words_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<WordCategory> wordList = [
    WordCategory(title: "Numbres", items: [], totalProgress: 10),
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
                          builder: (context) => LearningWordsScreen(wordCategory: wordList[i],),
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

class CategoryButton extends StatelessWidget {
  final String title;
  final int progress;
  final Function onTap;

  const CategoryButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.progress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 45,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 16)),
            Text(
              "$progress%",
              // style: TextStyle(fontSize: 16, fontFamily: "Italy"),
            ),
          ],
        ),
      ),
    );
  }
}
