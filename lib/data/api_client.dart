import 'package:dio/dio.dart';
import 'package:news_app/data/models/news_info.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://newsapi.org/v2/top-headlines")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  static ApiClient create() {
    final dio = Dio();
    return ApiClient(dio);
  }

  @GET("?country={country}&apiKey={apiKey}")
  Future<List<NewsInfo>> getHeadlineNews(
      @Path() String country, @Path() String apiKey);
}
