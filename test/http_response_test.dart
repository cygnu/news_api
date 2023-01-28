import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:news_api/data/repository.dart';

void main() {
  final _server = MockWebServer(port: 8081);
  ApiRepository _apiRepository;
  late String country;
  late String apiKey;

  setUp(() {
    // Http通信成功時
    _apiRepository = ApiRepository().fetch(country, apiKey) as ApiRepository;
  });

  tearDown(_server.shutdown);

  test('Http status code "200 OK"', () async {
    _server.enqueue(httpCode: 200, body: '{}');
    final res = await _apiRepository.fetch("us", dotenv.env["API_KEY"]!);
    expect(res, '{}');
  });
}
