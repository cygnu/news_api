import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/models/news_info.dart';

class MainViewNotifier extends StateNotifier<List<NewsInfo>> {
  MainViewNotifier() : super([]);

  Future<void> getNews(country, apiKey) async {
    await getHeadlineNews(country, apiKey);
  }
}
