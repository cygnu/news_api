import 'package:dio/dio.dart';
import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/data/response/result.dart';

abstract class NewsRepository {
  Future<Result<List<NewsInfo>>> fetchNews(country, apiKey);
}

class NewsRepositoryImpl with NewsRepository {
  final ApiClient _client;

  NewsRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<NewsInfo>>> fetchNews(country, apiKey) {
    return _client
        .fetchNews(country, apiKey)
        .then((news) => Result<List<NewsInfo>>.success(news))
        .catchError((error) => Result<List<NewsInfo>>.failure(error));
  }
}
