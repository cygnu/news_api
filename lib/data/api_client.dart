import 'dart:convert' as convert;

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/api_client_data.dart';
import 'package:news_api/data/models/news_root.dart';

final apiClientProvider =
    FutureProvider.family.autoDispose<NewsRoot, ApiClientData>(
  (ref, apiClientData) =>
      ApiClient().getHeadlineNews(apiClientData.country, apiClientData.apiKey),
);

class ApiClient {
  Future<NewsRoot> getHeadlineNews(String country, String apiKey) async {
    final dio = Dio();
    const baseUrl = 'https://newsapi.org/v2/top-headlines';

    final response = await dio.get('$baseUrl?country=$country&apiKey=$apiKey');

    if (response.statusCode == 200) {
      try {
        return NewsRoot.fromJson(convert.jsonDecode(response.data));
      } catch (e) {
        throw e;
      }
    } else {
      throw ('Request failed with status: ${response.statusCode}');
    }
  }
}
