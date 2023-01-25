import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/screens/views/main_view_model.dart';

class NewsListView extends HookConsumerWidget {
  const NewsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<NewsInfo>> asyncValue =
        ref.watch(mainViewModelProvider);

    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          asyncValue.when(
            data: (List<NewsInfo> data) {
              return NewsItem(article: data);
            },
            error: (Object error, StackTrace stackTrace) {
              return SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        child: Text('Error.'),
                      );
                    },
                  ),
                ),
              );
            },
            loading: () {
              return SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: Center(
                  child: CupertinoActivityIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
