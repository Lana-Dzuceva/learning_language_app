import "package:flutter/material.dart";

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
      margin: const EdgeInsets.all(20),
      height: 300,
      width: 300,
      child: Text(text, style: const TextStyle(fontSize: 25)),
    );
  }
}
