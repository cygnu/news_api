import 'package:flutter/material.dart';
import 'package:news_api/data/models/news_article.dart';
import 'package:news_api/screens/details_screen.dart';

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(article: article)),
              );
            },
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
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
