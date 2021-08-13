import 'package:flutter/material.dart';
import 'package:news_app/data/models/news_article.dart';

class NewsItem extends StatelessWidget {
  NewsItem({
    required this.article,
  });

  final NewsArticle article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(article.urlToImage!),
    );
  }
}
