import 'package:flutter/cupertino.dart';
import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/models/news_info.dart';

class MainViewModel extends ChangeNotifier {
  late String country;
  late String apiKey;

  List<NewsInfo> _news = [];
  List<NewsInfo> get news => _news;

  Future<void> getNews(country, apiKey) async {
    _news = await getHeadlineNews(country, apiKey);
    notifyListeners();
  }
}
