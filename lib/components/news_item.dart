import 'package:flutter/material.dart';
import 'package:news_api/data/models/news_article.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.article}) : super(key: key);

  final NewsArticle article;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.network(article.urlToImage!),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              article.description!,
              maxLines: 3,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
