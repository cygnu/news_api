import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/api_client_data.dart';

final apiClientProvider =
    FutureProvider.family.autoDispose<List<dynamic>, ApiClientData>(
  (ref, apiClientData) =>
      ApiClient().getHeadlineNews(apiClientData.country, apiClientData.apiKey),
);

class ApiClient {
  Future<List<dynamic>> getHeadlineNews(String country, String apiKey) async {
    final dio = Dio();
    const baseUrl = 'https://newsapi.org/v2/top-headlines';

    final response = await dio.get('$baseUrl?country=$country&apiKey=$apiKey');

    if (response.statusCode == 200) {
      try {
        Map<String, dynamic> map = response.data;

        final data = map.entries.map((e) => e.value).toList();
        print(data.toString());
        return data;
      } catch (e) {
        throw e;
      }
    } else {
      print('Request failed with status: ${response.statusCode}');
      return [];
    }
  }
}
