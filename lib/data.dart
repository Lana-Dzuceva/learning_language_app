import 'model/WordCategory.dart';
import 'model/word.dart';

var category1 = WordCategory(
    title: "food",
    items: [
      Word(
          english: 'pizza',
          russian: 'пица',
          countViews: 0,
          progress: '',
          isLearned: false),
      Word(
          english: 'cucumber',
          russian: 'огурец',
          countViews: 0,
          progress: '',
          isLearned: false),
      Word(
          english: 'tomato',
          russian: 'помидор',
          countViews: 0,
          progress: '',
          isLearned: false),
      Word(
          english: 'hren',
          russian: 'хрен',
          countViews: 0,
          progress: '',
          isLearned: false),
    ],
    totalProgress: 10);
