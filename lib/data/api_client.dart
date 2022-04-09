import 'package:dio/dio.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2/top-headlines")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("?country={country}&apiKey={apiKey}")
  Future<List<NewsInfo>> fetchNews(
      @Path("country") String country, @Path("apiKey") int apiKey);
}
