import 'package:dio/dio.dart';
import 'package:news_app/data/models/news_info.dart';

final _dio = new Dio();
final baseUrl = "https://newsapi.org/v2/top-headlines";

Future<List<NewsInfo>> getHeadlineNews({
  required String country,
  required String apiKey,
}) async {
  Response response = await _dio.get("baseUrl?country=$country&apiKey=$apiKey");
}
