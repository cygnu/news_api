import 'package:flutter/cupertino.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/data/repository/news_repository.dart';

class MainViewModel extends ChangeNotifier {
  final NewsRepository repository = NewsRepositoryImpl();
  late List<NewsInfo> news;
  late String country;
  late String apiKey;

  MainViewModel() {
    this.news = [];
    fetchNews(country, apiKey);
  }

  Future<void> fetchNews(country, apiKey) async {
    await repository.fetchNews(country, apiKey).then((result) {
      result.when(success: (news) {
        notifyListeners();
      }, failure: (error) {
        print(error.message);
      });
    });
  }
}
