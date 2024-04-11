import 'package:language_learning_app/model/word.dart';
import 'dart:convert';

class WordCategory {
  String title;
  List<Word> items;
  int totalProgress;

  WordCategory({
    required this.title,
    required this.items,
    required this.totalProgress,
  });

  factory WordCategory.fromRawJson(String str) => WordCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WordCategory.fromJson(Map<String, dynamic> json) => WordCategory(
    title: json["title"],
    items: List<Word>.from(json["items"].map((x) => Word.fromJson(x))),
    totalProgress: json["total_progress"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "total_progress": totalProgress,
  };
}
