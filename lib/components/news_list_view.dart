import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

class NewsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articleModel = MainViewModel();
    articleModel.fetchNews("us", dotenv.env["API_KEY"]);

    return ChangeNotifierProvider(
      create: (context) => articleModel,
      child: Consumer<MainViewModel>(
        builder: (BuildContext context, MainViewModel articleModel, _) {
          return ListView.builder(
            itemCount: articleModel.news.length,
            itemBuilder: (BuildContext context, int index) => NewsItem(
              article: articleModel.news[index].articles[index],
            ),
          );
        },
      ),
    );
  }
}
