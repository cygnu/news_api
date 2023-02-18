import 'package:flutter/material.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_article.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.articles}) : super(key: key);

  final List<NewsArticle> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          List<NewsArticle> article = [];

          for (int i = 0; i < articles.length; i++) {
            article.add(articles[i]);
          }
          return NewsItem(article: article[index]);
        },
        childCount: articles.length,
      ),
    );
  }
}
