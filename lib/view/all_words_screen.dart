import 'package:flutter/material.dart';
import 'package:language_learning_app/model/WordCategory.dart';

class AllWordsScreen extends StatefulWidget {
  final WordCategory wordCategory;

  const AllWordsScreen({super.key, required this.wordCategory});

  @override
  State<AllWordsScreen> createState() => _AllWordsScreenState();
}

class _AllWordsScreenState extends State<AllWordsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
