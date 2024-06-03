import "package:flutter/material.dart";

class CategoryButton2 extends StatelessWidget {
  final String title;
  final int progress;
  final Function onTap;

  const CategoryButton2({
    super.key,
    required this.title,
    required this.onTap,
    required this.progress,
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    "$progress%",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // Container(
                  //   width: 50,
                  //   height: 10,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  //   child: FractionallySizedBox(
                  //     widthFactor: progress / 100,
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //         color: Colors.green,
                  //         borderRadius: BorderRadius.circular(5),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}