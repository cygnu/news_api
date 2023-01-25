import 'package:flutter/material.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_article.dart';
import 'package:news_api/data/models/news_info.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.data}) : super(key: key);

  final List<NewsInfo> data;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          List<NewsArticle> articles = [];

          for (int i = 0; i < data.length; i++) {
            articles.addAll(data[index].articles);
          }

          return NewsItem(article: articles[index]);
        },
      ),
    );
  }
}
