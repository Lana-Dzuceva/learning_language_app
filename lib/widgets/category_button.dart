import "package:flutter/material.dart";

class CategoryButton extends StatelessWidget {
  final String title;
  final int? progress;
  final Function onTap;

  const CategoryButton(
      {super.key, required this.title, required this.onTap, this.progress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 45,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: progress != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            if (progress != null)
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
