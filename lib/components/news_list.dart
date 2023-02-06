import 'package:flutter/material.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_article.dart';
import 'package:news_api/data/models/news_info.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.data}) : super(key: key);

  final NewsInfo data;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          List<NewsArticle> articles = [];

          print(data.toString());

          for (int i = 0; i < int.parse(data.totalResults); i++) {
            articles.addAll(data.articles);
          }

          return NewsItem(article: articles[index]);
        },
        childCount: int.parse(data.totalResults),
      ),
    );
  }
}
