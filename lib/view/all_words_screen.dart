// import 'package:flutter/material.dart';
// import 'package:language_learning_app/model/WordCategory.dart';
// import 'package:flutter/material.dart';
// import 'package:language_learning_app/model/word.dart';
//
// class AllWordsScreen extends StatefulWidget {
//   final WordCategory wordCategory;
//
//   const AllWordsScreen({super.key, required this.wordCategory});
//
//   @override
//   State<AllWordsScreen> createState() => _AllWordsScreenState();
// }
//
// class _AllWordsScreenState extends State<AllWordsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text(
//         widget.wordCategory.title,
//         style: const TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//       ) ,),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               const SizedBox(height: 20),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: widget.wordCategory.items.length,
//                   itemBuilder: (context, index) {
//                     final word = widget.wordCategory.items[index];
//                     return ListTile(
//                       title: Text(word.english),
//                       subtitle: Text(word.russian),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:language_learning_app/model/WordCategory.dart';
import 'package:language_learning_app/model/word.dart';

class AllWordsScreen extends StatefulWidget {
  final WordCategory wordCategory;

  const AllWordsScreen({super.key, required this.wordCategory});

  @override
  State<AllWordsScreen> createState() => _AllWordsScreenState();
}

class _AllWordsScreenState extends State<AllWordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.wordCategory.title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.wordCategory.items.length,
                  itemBuilder: (context, index) {
                    final word = widget.wordCategory.items[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(
                              color: Colors.indigoAccent, width: 1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            word.english,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            word.russian,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
