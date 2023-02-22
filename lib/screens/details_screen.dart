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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.title!,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "Published At: ${article.publishedAt}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                article.content!,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Author: ${article.author}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                "Source: ${article.source?.name}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
