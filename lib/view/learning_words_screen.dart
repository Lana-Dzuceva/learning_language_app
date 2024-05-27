import 'package:flip_card/flip_card.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/src/material/colors.dart';
import '../model/WordCategory.dart';
import '../model/word.dart';

// class LearningWordsScreen extends StatefulWidget {
//   WordCategory wordCategory;
//
//   LearningWordsScreen({required this.wordCategory, super.key});
//
//   @override
//   State<LearningWordsScreen> createState() => _LearningWordsScreenState();
// }
//
// class _LearningWordsScreenState extends State<LearningWordsScreen> {
//   //Color color = Color.fromRGBO(100, 123, b, opacity);
//   Color color = Colors.orange;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(height: 100),
//               Stack(
//                 children: [
//                   FlipCard(
//                     front: CardSide(text: "work"),
//                     back: CardSide(text: "работа"),
//                   ),
//                 ],
//               ),
//               //Изменения
//               MaterialButton(
//                 onPressed: () {  },
//                 child: Container(
//                   margin: EdgeInsets.symmetric(vertical: 5),
//                   // height: 45,
//                   alignment: Alignment.center,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Icon(Icons.arrow_forward_rounded, size: 80),
//                 ),
//               )
//               // GestureDetector(
//               //   onTap: () => setState(() {
//               //     color = color == Colors.orange ? Colors.green : Colors.orange;
//               //     print(1);
//               //   }),
//               //   child: AnimatedContainer(
//               //     child: Text(color.toString()),
//               //     duration: Duration(seconds: 1),
//               //     width: 100,
//               //     height: 100,
//               //     color: Colors.grey,
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


class LearningWordsScreen extends StatefulWidget {
  final WordCategory wordCategory;
  const LearningWordsScreen({super.key, required this.wordCategory});

  @override
  State<LearningWordsScreen> createState() => _LearningWordsScreenState();
}


class _LearningWordsScreenState extends State<LearningWordsScreen> {
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


