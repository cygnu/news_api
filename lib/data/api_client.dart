import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_api/data/models/news_info.dart';

class ApiClient {
  final baseUrl = 'https://newsapi.org/v2/top-headlines';

  Future<List<NewsInfo>> getHeadlineNews(String country, String apiKey) async {
    final response =
        await http.get(Uri.https('$baseUrl?country=$country&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final decodedJson = jsonDecode(response.body) as List<NewsInfo>;
      return decodedJson
          .map((e) => NewsInfo.fromJson(e as Map<String, NewsInfo>))
          .toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return [];
    }
  }
}
