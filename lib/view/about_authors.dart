import 'package:flutter/material.dart';

class AboutAuthorsScreen extends StatelessWidget {
  const AboutAuthorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About the Authors')),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'About the Authors',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              AuthorCard(
                name: 'Лана',
                description:
                    'Лана - одна из авторов данного кода. Она большой молодец и внесла значительный вклад в разработку.',
                imageUrl:
                    'https://via.placeholder.com/150', // Замените на реальный URL изображения
              ),
              SizedBox(height: 20),
              AuthorCard(
                name: 'Дора',
                description:
                    'Дора - другая автор данного кода. Она также большая молодец и активно участвовала в создании этого проекта.',
                imageUrl:
                    'https://via.placeholder.com/150', // Замените на реальный URL изображения
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthorCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;

  const AuthorCard({
    Key? key,
    required this.name,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
