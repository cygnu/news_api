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
  MainViewModel(this._apiRepository)
      : super(const AsyncLoading<List<NewsInfo>>()) {
    fetch();
  }

  final ApiRepository _apiRepository;

  Future<void> fetch({bool isLoadMore = false}) async {
    state = await AsyncValue.guard(() async {
      final data = await _apiRepository.fetch("us", dotenv.env["API_KEY"]!);
      return [if (isLoadMore) ...state.value ?? [], ...data];
    });
  }

  void loadMore() {
    if (state == const AsyncLoading<List<NewsInfo>>().copyWithPrevious(state)) {
      return;
    }

    state = const AsyncLoading<List<NewsInfo>>().copyWithPrevious(state);

    fetch(isLoadMore: true);
  }
}
