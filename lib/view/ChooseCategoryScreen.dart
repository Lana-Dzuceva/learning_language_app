import 'package:flutter/material.dart';

import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/model/word.dart';

import 'learning_words_screen.dart';

class ChooseCategoryScreen extends StatefulWidget {
  const ChooseCategoryScreen({super.key});

  @override
  State<ChooseCategoryScreen> createState() => _ChooseCategoryScreenState();
}

class _ChooseCategoryScreenState extends State<ChooseCategoryScreen> {
  List<WordCategory> wordList = [
    WordCategory(
        title: "Food",
        items: [
          Word(
              english: 'Pizza',
              russian: 'Пицца',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Chocolate',
              russian: 'Шоколад',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sandwich',
              russian: 'Бутерброд',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Egg',
              russian: 'Яйцо',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sushi',
              russian: 'Суши',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pie',
              russian: 'Пирог',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Butter',
              russian: 'Масло',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cake',
              russian: 'Торт',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Rice',
              russian: 'Рис',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Soup',
              russian: 'Суп',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Porridge',
              russian: 'Каша',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Salt',
              russian: 'Соль',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sugar',
              russian: 'Сахар',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cookie',
              russian: 'Печенье',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Ice cream',
              russian: 'Мороженое',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Meat',
              russian: 'Мясо',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Bread',
              russian: 'Хлеб',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Salad',
              russian: 'Салат',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cheese',
              russian: 'Сыр',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Milk',
              russian: 'Молоко',
              countViews: 0,
              progress: '',
              isLearned: false),
        ],
        totalProgress: 10),//food
    WordCategory(
        title: "Animals",
        items: [
          Word(
              english: 'Leopard',
              russian: 'Леопард',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Fox',
              russian: 'Лиса',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Rabbit',
              russian: 'Заяц',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Wolf',
              russian: 'Волк',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Deer',
              russian: 'Олень',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Moose',
              russian: 'Лось',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Zebra',
              russian: 'Зебра',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Skunk',
              russian: 'Скунс',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Turtle',
              russian: 'Черепаха',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Snail',
              russian: 'Улитка',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Bird',
              russian: 'Птица',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Horse',
              russian: 'Лошадь',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Chicken',
              russian: 'Курица',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pig',
              russian: 'Свинья',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sheep',
              russian: 'Овца',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Frog',
              russian: 'Лягушка',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Squirrel',
              russian: 'Белка',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Racoon',
              russian: 'Енот',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Koala',
              russian: 'Коала',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Ant',
              russian: 'Муравей',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//animal
    WordCategory(
        title: "Fruits",
        items: [
          Word(
              english: 'Apple',
              russian: 'Яблоко',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pineapple',
              russian: 'Ананас',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'GRAAAPE',
              russian: 'Виноград',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pear',
              russian: 'Груша',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Melon',
              russian: 'Дыня',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Watermelon',
              russian: 'Арбуз',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Apricot',
              russian: 'Абрикос',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Avocado',
              russian: 'Авокадо',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Kiwi',
              russian: 'Киви',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Lemon',
              russian: 'Лимон',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Plum',
              russian: 'Слива',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Papaya',
              russian: 'Папайа',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Mango',
              russian: 'Манго',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Peach',
              russian: 'Персик',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Orange',
              russian: 'Апельсин',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Coconut',
              russian: 'Кокос',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cherry',
              russian: 'Вишня',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Lime',
              russian: 'Лайм',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Grapefruit',
              russian: 'Грейпфрут',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Date',
              russian: 'Финик',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//fruits
    WordCategory(
        title: "Vegetables",
        items: [
          Word(
              english: 'Bean',
              russian: 'Бобы',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cabbage',
              russian: 'Капуста',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Potato',
              russian: 'Картофель',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Onion',
              russian: 'Лук',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Carrot',
              russian: 'Мокровь',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Redish',
              russian: 'Редиска',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Eggplant',
              russian: 'Баклажан',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Celery',
              russian: 'Сельдерей',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Dill',
              russian: 'Укроп',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pea',
              russian: 'Горох',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cucumber',
              russian: 'Огурец',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Pepper',
              russian: 'Перец',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Horseradish',
              russian: 'Хрен',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Haricot',
              russian: 'Фасоль',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Garlic',
              russian: 'Чеснок',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Spinach',
              russian: 'Шпинат',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sorrel',
              russian: 'Щавель',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Turnip',
              russian: 'Репа',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Beet',
              russian: 'Свекла',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Asparagus',
              russian: 'Спаржа',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//vegetables
    WordCategory(
        title: "Weather",
        items: [
          Word(
              english: 'Rain',
              russian: 'Дождь',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Wind',
              russian: 'Ветер',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Fog',
              russian: 'Туман',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hail',
              russian: 'Град',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Snow',
              russian: 'Снег',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Shower',
              russian: 'Ливень',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Thunder',
              russian: 'Гром',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hail',
              russian: 'Град',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Drizzle',
              russian: 'Мелкий дождь',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Cloudy',
              russian: 'Облачно',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Early frosts',
              russian: 'Заморозки',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hoarfrost',
              russian: 'Иней',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Hurricane',
              russian: 'Ураган',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Lightning',
              russian: 'Молния',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Lemon',
              russian: 'Лимон',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Storm',
              russian: 'Буря',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Puddle',
              russian: 'Лужа',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Sleet',
              russian: 'Слякоть',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Defoliation',
              russian: 'Листопад',
              countViews: 0,
              progress: '',
              isLearned: false),
          Word(
              english: 'Rainbow',
              russian: 'Радуга',
              countViews: 0,
              progress: '',
              isLearned: false),
        ], totalProgress: 10),//weather
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: ListView.builder(
              itemCount: wordList.length,
              itemBuilder: (context, i) {
                return CategoryButton(
                  title: wordList[i].title,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LearningWordsScreen(
                            wordCategory: wordList[i],
                          ),
                        ));
                  },
                  progress: wordList[i].totalProgress,
                );
              },
            ),
          )),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final int progress;
  final Function onTap;

  const CategoryButton(
      {super.key,
        required this.title,
        required this.onTap,
        required this.progress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 45,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 16)),
            Text(
              "$progress%",
              // style: TextStyle(fontSize: 16, fontFamily: "Italy"),
            ),
          ],
        ),
      ),
    );
  }
}