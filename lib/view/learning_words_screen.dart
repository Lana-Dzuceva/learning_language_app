
import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/src/material/colors.dart';
import '../model/WordCategory.dart';
import '../model/word.dart';

class LearningWordsScreen extends StatefulWidget {
  WordCategory wordCategory;

  LearningWordsScreen({required this.wordCategory, super.key});

  @override
  State<LearningWordsScreen> createState() => _LearningWordsScreenState();
}

class _LearningWordsScreenState extends State<LearningWordsScreen> {
  // Color color = Color.fromRGBO(100, 123, b, opacity);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardSwiper(
        cardsCount: widget.wordCategory.items.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            Card(word: widget.wordCategory.items[index]),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final Word word;

  Card({
    required this.word,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      //вонючие рандомные цвета
      color: Colors.indigo.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(word.english, style: const TextStyle(fontSize: 50)),
          Text(word.russian, style: const TextStyle(fontSize: 30))
        ],
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
        color: Colors.indigoAccent,
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