import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/data/repository.dart';

final mainViewModelProvider =
    StateNotifierProvider<MainViewModel, AsyncValue<List<NewsInfo>>>(
  (ref) => MainViewModel(
    ApiRepository(),
  ),
);

class MainViewModel extends StateNotifier<AsyncValue<List<NewsInfo>>> {
  MainViewModel(this._apiRepository) : super(const AsyncValue.loading()) {
    fetch();
  }

  final ApiRepository _apiRepository;

  Future<void> fetch() async {
    state = AsyncValue.loading();
    try {
      // await dotenv.load(fileName: ".env");
      final data = await _apiRepository.fetch("us", dotenv.env["API_KEY"]!);
      state = AsyncValue.data(data);
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
  }
}
