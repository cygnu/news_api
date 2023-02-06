import 'package:news_api/data/api_client.dart';

class ApiRepository {
  final _apiClient = ApiClient();

  Future<List<dynamic>> fetch(String country, String apiKey) async {
    return await _apiClient.getHeadlineNews(country, apiKey);
  }
}
