import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';

class LearningWordsScreen extends StatefulWidget {
  const LearningWordsScreen({super.key});

  @override
  State<LearningWordsScreen> createState() => _LearningWordsScreenState();
}

class _LearningWordsScreenState extends State<LearningWordsScreen> {
  var a = ["q", "w", "e"];
  var aa = ["qq", "ww", "ee"];
  Color color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              FlipCard(
                front: CardSide(text: "work"),
                back: CardSide(text: "работа"),
              ),
              MaterialButton(
                onPressed: () {  },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  // height: 45,
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.arrow_forward_rounded, size: 80),
                ),
              )
              // GestureDetector(
              //   onTap: () => setState(() {
              //     color = color == Colors.orange ? Colors.green : Colors.orange;
              //     print(1);
              //   }),
              //   child: AnimatedContainer(
              //     child: Text(color.toString()),
              //     duration: Duration(seconds: 1),
              //     width: 100,
              //     height: 100,
              //     color: Colors.grey,
              //   ),
              // ),
            ],
          ),
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
