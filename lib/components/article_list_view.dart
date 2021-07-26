import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/models/article_model.dart';
import 'package:provider/provider.dart';

class ArticleListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articleModel = Provider.of<ArticleModel>(context);
    articleModel.getArticles();

    return StreamBuilder(
      stream: articleModel.getArticles().asStream(),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: (snapshot.data)!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile();
            },
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
