import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../model/WordCategory.dart';
import '../model/word.dart';

class LearningWordsScreen extends StatefulWidget {
  final WordCategory wordCategory;

  LearningWordsScreen({required this.wordCategory, super.key});

  @override
  State<LearningWordsScreen> createState() => _LearningWordsScreenState();
}

class _LearningWordsScreenState extends State<LearningWordsScreen> {
  final List<Color> cardColors = [
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.green.shade400,
    Colors.orange.shade400,
    Colors.redAccent,
    Colors.purpleAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardSwiper(
        cardsCount: widget.wordCategory.items.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
            WordCard(
              word: widget.wordCategory.items[index],
              color: cardColors[index % cardColors.length],
            ),
      ),
    );
  }
}

class WordCard extends StatelessWidget {
  final Word word;
  final Color color;

  WordCard({
    required this.word,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, color.withOpacity(1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            word.english,
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 3,
                  color: Colors.black45,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            word.russian,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white70,
              shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2,
                  color: Colors.black45,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
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
        gradient: LinearGradient(
          colors: [Colors.indigoAccent, Colors.blueAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: 300,
      width: 300,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 3,
              color: Colors.black45,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
