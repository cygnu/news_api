import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:news_api/data/api_client.dart';

void main() {
  final _server = MockWebServer(port: 8081);
  final apiClient = ApiClient();

  setUp(() {
    // Http通信成功時
    _server.start();
  });

  test('Http status code "200 OK"', () async {
    await dotenv.load(fileName: ".env");
    _server.enqueue(httpCode: 200);
    final res = await apiClient.getHeadlineNews("us", dotenv.env['API_KEY']!);
    expect(res.status, "ok");
  });

  tearDown(_server.shutdown);
}
