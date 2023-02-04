import 'package:dio/dio.dart';
import 'package:news_api/data/models/news_info.dart';

class ApiClient {
  Future<List<NewsInfo>> getHeadlineNews(String country, String apiKey) async {
    final dio = Dio();
    const baseUrl = 'https://newsapi.org/v2/top-headlines';

    final response = await dio.get('$baseUrl?country=$country&apiKey=$apiKey');

    if (response.statusCode == 200) {
      return response.data.map((e) => NewsInfo.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}');
      return [];
    }
  }
}
