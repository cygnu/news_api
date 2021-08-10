import 'package:flutter/material.dart';
import 'package:news_app/data/models/news_info.dart';
import 'package:news_app/screens/views/main_view_model.dart';
import 'package:provider/provider.dart';

class ArticleListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articleModel = Provider.of<MainViewModel>(context);
    articleModel.getNews();
    return Consumer<MainViewModel>(
      builder: (BuildContext context, model, Widget? child) {
        return ListView.builder(
          itemCount: model.news.length,
          itemBuilder: (BuildContext context, int index) => NewsItem(
            newsInfo: model.news[index],
          ),
        );
      },
    );
  }
}

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
