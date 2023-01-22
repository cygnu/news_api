import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/models/news_info.dart';

abstract class ApiRepository {
  Future<List<NewsInfo>> getNews(String country, String apiKey);
}

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl({required ApiClient apiClient}) : _apiClient = apiClient;

  final ApiClient _apiClient;

  @override
  Future<List<NewsInfo>> getNews(String country, String apiKey) async {
    return await _apiClient.getHeadlineNews(country, apiKey);
  }
}
