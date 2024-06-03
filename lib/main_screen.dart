import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/data.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/training_types_enum.dart';
import 'package:language_learning_app/view/about_authors.dart';
import 'package:language_learning_app/view/choose_category_screen.dart';
import 'package:language_learning_app/view/test_screen.dart';
import 'package:language_learning_app/widgets/category_button.dart';

import 'model/word.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип или заголовок приложения
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    "Pardish",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Выберите действие",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // Кнопки меню
            MenuButton(
              title: "Учить",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseCategoryScreen(
                        trainingType: TrainingTypes.learn,
                      ),
                    ));
              },
              icon: Icons.school,
            ),
            MenuButton(
              title: "Проверить себя",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseCategoryScreen(
                        trainingType: TrainingTypes.checkYourself,
                      ),
                    ));
              },
              icon: Icons.quiz,
            ),
            MenuButton(
              title: "Все слова",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseCategoryScreen(
                        trainingType: TrainingTypes.allWords,
                      ),
                    ));
              },
              icon: Icons.list,
            ),
            MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutAuthorsScreen(),
                    ));
              },
              child: Text("Об Авторах", style: TextStyle(color: Colors.white, fontSize: 15),),
            )
          ],
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData icon;

  const MenuButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: MaterialButton(
        onPressed: () {
          onTap();
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Container(height: 100, width: 100, color: Colors.white, child: Text("Логотип"),),
//             SizedBox(
//               height: 300,
//             ),
//             CategoryButton(
//                 title: "Учить",
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ChooseCategoryScreen(
//                           trainingType: TrainingTypes.learn,
//                         ),
//                       ));
//                 }),
//             CategoryButton(
//                 title: "Проверить себя",
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ChooseCategoryScreen(
//                           trainingType: TrainingTypes.checkYourself,
//                         ),
//                       ));
//                 }),
//             CategoryButton(title: "Все слова", onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ChooseCategoryScreen(
//                       trainingType: TrainingTypes.allWords,
//                     ),
//                   ));
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
