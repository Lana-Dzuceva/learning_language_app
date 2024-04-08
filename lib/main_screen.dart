import 'package:flutter/material.dart';
import 'package:language_learning_app/constants.dart';
import 'package:language_learning_app/view/ChooseCategoryScreen.dart';


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
            SizedBox(height: 300,),
            MenuButton(title: "Учить", onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseCategoryScreen(),));
            }),
            MenuButton(title: "Проверить себя", onTap: (){}),
            MenuButton(title: "Все слова", onTap: (){}),

          ],
        ),
      ),
    );
  }
}


class MenuButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const MenuButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () { onTap(); },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 45,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(title, style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
