import 'package:flutter/material.dart';
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
          itemBuilder: (BuildContext context, int index) {
            return ListTile();
          },
        );
      },
    );
  }
}
