import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_app/components/news_item.dart';
import 'package:news_app/screens/views/main_view_model.dart';
import 'package:provider/provider.dart';

class NewsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articleModel = Provider.of<MainViewModel>(context);
    articleModel.getNews("us", dotenv.env["API_KEY"]);
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
