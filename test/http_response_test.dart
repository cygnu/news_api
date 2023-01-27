import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_api/data/api_client.dart';
import 'package:news_api/data/repository.dart';

void main() {
  late ApiRepositoryImpl _apiRepository;
  final ApiClient _apiClient;

  setUp(() {
    _apiRepository = ApiRepositoryImpl(apiClient: _apiClient)
        .getNews("us", dotenv.env["API_KEY"]!) as ApiRepositoryImpl;
  });
}
