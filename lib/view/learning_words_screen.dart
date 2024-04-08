import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import '../model/WordCategory.dart';

class LearningWordsScreen extends StatefulWidget {
  WordCategory wordCategory;
  LearningWordsScreen({required this.wordCategory, super.key});

  @override
  State<LearningWordsScreen> createState() => _LearningWordsScreenState();
}

class _LearningWordsScreenState extends State<LearningWordsScreen> {
  var a = ["q", "w", "e"];
  var aa = ["qq", "ww", "ee"];
  Color color = Colors.orange;

  List<Container> cards = [
    Container(
      color: Colors.indigo.shade300,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Fear",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Страх",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.teal.shade200,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Tiny",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Крошечный",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.lime.shade300,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Immense",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Безмерный",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.pinkAccent.shade100,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Cat",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Кошка",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.purple.shade200,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Dog",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Собака",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.blue.shade200,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Walk",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Идти",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.red.shade200,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Work",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Работа",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
      color: Colors.grey,
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Fork",
                    style: TextStyle(
                        fontSize: 50
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text("Вилка",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  )
                ]
            )
          ]),
    ),
    Container(
        color: Colors.brown.shade200,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Spoon",
                      style: TextStyle(
                        fontSize: 50
                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Ложка",
                      style: TextStyle(
                        fontSize: 30
                      ),
                    )
                  ]
              )
            ]),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flexible(
        child: CardSwiper(
          cardsCount: cards.length,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
        ),
      ),
    );
  }
}

class CardSide extends StatelessWidget {
  final String text;

  const CardSide({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      height: 300,
      width: 300,
      child: Text(text, style: TextStyle(fontSize: 25)),
    );
  }
}
