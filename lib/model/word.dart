import 'dart:convert';

//способ организации и хранения данных

class Word {
  String english;
  String russian;
  int? countViews; //может быть =0
  String? progress;
  bool isLearned;

  Word({
    required this.english, //инициализируем объекты
    required this.russian,
    required this.countViews,
    required this.progress,
    required this.isLearned,
  });

  factory Word.fromRawJson(String str) => Word.fromJson(json.decode(str));
  //метод, создающий экземпляр класса Word из строки json.
  String toRawJson() => json.encode(toJson());
  //объект Word в строку json.
  factory Word.fromJson(Map<String, dynamic> json) => Word(
        english: json["english"],
        russian: json["russian"],
        countViews: json["count_views"],
        progress: json["progress"],
        isLearned: json["isLearned"],
      );//объекты Word в объект json

  Map<String, dynamic> toJson() => {
        "english": english,
        "russian": russian,
        "count_views": countViews,
        "progress": progress,
      };
}
