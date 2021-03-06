import 'package:dio/dio.dart';
import 'package:news_api/data/models/news_info.dart';

final _dio = new Dio();
final baseUrl = "https://newsapi.org/v2/top-headlines";

Future<List<NewsInfo>> getHeadlineNews(String country, String apiKey) async {
  Response response = await _dio.get("baseUrl?country=$country&apiKey=$apiKey");

  List<NewsInfo> info = NewsInfo.fromJson(response.data) as List<NewsInfo>;
  return info;
}
