import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/models/news_info.dart';

class ApiRepository {
  final _apiClient = ApiClient();

  Future<NewsInfo> fetch(String country, String apiKey) async {
    return await _apiClient.getHeadlineNews(country, apiKey);
  }
}
