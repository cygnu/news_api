import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_article.dart';
import 'package:news_api/screens/views/main_view_model.dart';
import 'package:provider/provider.dart';

class NewsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articleModel = Provider.of<MainViewModel>(context);
    articleModel.getNews("us", dotenv.env["API_KEY"]);

    return Consumer<MainViewModel>(
      builder: (BuildContext context, model, Widget? child) {
        List<NewsArticle> articles = [];

        for (int i = 0; i < model.news.length; i++) {
          articles.addAll(model.news[i].articles);
        }

        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (BuildContext context, int index) => NewsItem(
            article: articles[index],
          ),
        );
      },
    );
  }
}
