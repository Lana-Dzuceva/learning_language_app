import 'dart:convert';

class Word {
  String english;
  String russian;
  int? countViews;
  String? progress;
  bool isLearned;

  Word({
    required this.english,
    required this.russian,
    required this.countViews,
    required this.progress,
    required this.isLearned,
  });

  factory Word.fromRawJson(String str) => Word.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Word.fromJson(Map<String, dynamic> json) => Word(
        english: json["english"],
        russian: json["russian"],
        countViews: json["count_views"],
        progress: json["progress"],
        isLearned: json["isLearned"],
      );

  Map<String, dynamic> toJson() => {
        "english": english,
        "russian": russian,
        "count_views": countViews,
        "progress": progress,
      };
}
