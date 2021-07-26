import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'article.dart';

const NewsAPIURL = 'https://newsapi.org/v2/top-headlines?country=jp';
const apiKey = '657ad8xxxxxx';

class ArticleModel extends ChangeNotifier {
  List<Article> articlesList = [];

  Future<List<Article>> getArticles() async {
    Uri uri = '$NewsAPIURL&apiKey=$apiKey' as Uri;
    http.Response response = await http.get(uri);

    if (response.statusCode != 200) {
      print(response.statusCode);
    }

    Map<String, dynamic> articlesData = jsonDecode(response.body);
    for (var article in articlesData['articles']) {
      articlesList.add(Article.fromJson(article));
    }

    return articlesList;
  }
}
