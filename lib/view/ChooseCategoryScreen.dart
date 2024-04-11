import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/model/word.dart';

import 'learning_words_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<WordCategory> wordList = [
    WordCategory(
        title: "Food",
        items: [
          Word(
              english: 'Pizza',
              russian: 'Питса',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cucumber',
              russian: 'Огурец',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Tomato',
              russian: 'Помидор',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hren',
              russian: 'Хрен',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sushi',
              russian: 'Суши',
              countViews: 0,
              progress: '',
              isLearned: false),
        ],
        totalProgress: 10),//food
    WordCategory(
        title: "Animals",
        items: [
          Word(
              english: 'Leopard',
              russian: 'Леопард',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Fox',
              russian: 'Лиса',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Rabbit',
              russian: 'Заяц',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Wolf',
              russian: 'Волк',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Deer',
              russian: 'Олень',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//animal
    WordCategory(title: "Fruits",
        items: [
          Word(
              english: 'Apple',
              russian: 'Яблоко',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pineapple',
              russian: 'Ананас',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'GRAAAPE',
              russian: 'Виноград',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pear',
              russian: 'Груша',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Melon',
              russian: 'Дыня',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//fruits
    WordCategory(
        title: "Vegetables",
        items: [
          Word(
              english: 'Bean',
              russian: 'Бобы',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cabbage',
              russian: 'Капуста',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Potato',
              russian: 'Картофель',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Onion',
              russian: 'Лук',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Carrot',
              russian: 'Мокровь',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//vegetables
    WordCategory(
        title: "Weather",
        items: [
          Word(
              english: 'Rain',
              russian: 'Дождь',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Wind',
              russian: 'Ветер',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Fog',
              russian: 'Туман',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hail',
              russian: 'Град',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Snow',
              russian: 'Снег',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//weather
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
                            wordCategory: wordList[i],
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