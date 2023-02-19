import 'package:flutter/material.dart';
import 'package:news_api/data/models/news_article.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.article}) : super(key: key);
  static const route = 'details_screen';

  final NewsArticle article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Column(
            children: [
              Text(article.title!),
              Text(article.content!),
            ],
          ),
        ),
      ),
    );
  }
}
