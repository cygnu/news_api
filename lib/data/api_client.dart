import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/api_client_data.dart';
import 'package:news_api/data/models/news_info.dart';

final apiClientProvider =
    FutureProvider.family.autoDispose<List<NewsInfo>, ApiClientData>(
  (ref, apiClientData) =>
      ApiClient().getHeadlineNews(apiClientData.country, apiClientData.apiKey),
);

class ApiClient {
  Future<List<NewsInfo>> getHeadlineNews(String country, String apiKey) async {
    final dio = Dio();
    const baseUrl = 'https://newsapi.org/v2/top-headlines';

    final response = await dio.get('$baseUrl?country=$country&apiKey=$apiKey');

    if (response.statusCode == 200) {
      // final Map<String, dynamic> map = new Map<>.from(response.data);
      final data = jsonDecode(response.data) as List<NewsInfo>;
      return data
          .map((e) => NewsInfo.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      print('Request failed with status: ${response.statusCode}');
      return [];
    }
  }
}
