import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/screens/views/main_view_model.dart';

class NewsListView extends HookConsumerWidget {
  const NewsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<NewsInfo>> asyncValue =
        ref.watch(mainViewModelProvider);

    return Scrollbar(
      child: CustomScrollView(),
    );
  }
}
