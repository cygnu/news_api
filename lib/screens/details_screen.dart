import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';

class DetailsScreen extends StatelessWidget {
  static const route = 'details_screen';

  const DetailsScreen({Key? key, required this.article}) : super(key: key);
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Container(),
    );
  }
}
