import 'package:flutter/material.dart';
import 'package:news_app/data/models/news_info.dart';

class NewsItem extends StatelessWidget {
  NewsItem({
    required this.newsInfo,
  });

  final NewsInfo newsInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.network(newsInfo.article.urlToImage!),
    );
  }
}
