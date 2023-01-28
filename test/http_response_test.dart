import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:news_api/data/api_client.dart';

void main() {
  final _server = MockWebServer(port: 8081);
  ApiClient _apiClient;

  setUp(() {
    // Http通信成功時
    _apiClient =
        ApiClient().getHeadlineNews("us", dotenv.env["API_KEY"]!) as ApiClient;
  });

  tearDown(_server.shutdown);
}
