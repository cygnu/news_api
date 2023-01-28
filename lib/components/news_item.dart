import 'package:flutter/material.dart';
import 'package:news_api/data/models/news_article.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.article}) : super(key: key);

  final NewsArticle article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(article.urlToImage!),
    );
  }
}
