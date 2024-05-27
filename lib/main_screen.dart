import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/data.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/training_types_enum.dart';
import 'package:language_learning_app/view/choose_category_screen.dart';
import 'package:language_learning_app/view/test_screen.dart';
import 'package:language_learning_app/widgets/category_button.dart';

import 'model/word.dart';

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
          children: [
            // Container(height: 100, width: 100, color: Colors.white, child: Text("Логотип"),),
            SizedBox(
              height: 300,
            ),
            CategoryButton(
                title: "Учить",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseCategoryScreen(
                          trainingType: TrainingTypes.learn,
                        ),
                      ));
                }),
            CategoryButton(
                title: "Проверить себя",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseCategoryScreen(
                          trainingType: TrainingTypes.checkYourself,
                        ),
                      ));
                }),
            CategoryButton(title: "Все слова", onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChooseCategoryScreen(
                      trainingType: TrainingTypes.allWords,
                    ),
                  ));
            }),
          ],
        ),
      ),
    );
  }
}

//
// class MenuButton extends StatelessWidget {
//   final String title;
//   final Function onTap;
//
//   const MenuButton({super.key, required this.title, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       onPressed: () { onTap(); },
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 5),
//         height: 45,
//         alignment: Alignment.center,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Text(title, style: TextStyle(fontSize: 16)),
//       ),
//     );
//   }
// }
