import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_api/data/models/news_info.dart';

final baseUrl = "https://newsapi.org/v2/top-headlines";

Future<List<NewsInfo>> getHeadlineNews(String country, String apiKey) async {
  final response =
      await http.get(Uri.https("baseUrl?country=$country&apiKey=$apiKey"));

  List<NewsInfo> info =
      NewsInfo.fromJson(jsonDecode(response.body)) as List<NewsInfo>;
  return info;
}
