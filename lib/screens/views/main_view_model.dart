import 'package:flutter/cupertino.dart';
import 'package:news_app/data/api_client.dart';
import 'package:news_app/data/models/news_info.dart';

class MainViewModel extends ChangeNotifier {
  late String country;
  late String apiKey;

  final api = ApiClient.create();
  List<NewsInfo> _news = List();
  List<NewsInfo> get news => _news;

  Future<void> getNews() async {
    _news = await api.getHeadlineNews(country, apiKey);
    notifyListeners();
  }
}
