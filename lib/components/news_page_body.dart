import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/components/news_list.dart';
import 'package:news_api/screens/views/main_view_model.dart';

class NewsPageBody extends HookConsumerWidget {
  const NewsPageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<dynamic>> asyncValue =
        ref.watch(mainViewModelProvider);

    return Scrollbar(
      child: CustomScrollView(
        slivers: [
          asyncValue.when(
            data: (List<dynamic> data) {
              return NewsList(data: data);
            },
            error: (Object error, StackTrace stackTrace) {
              return SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: SliverToBoxAdapter(
                  child: Text("Error."),
                ),
              );
            },
            loading: () {
              return SliverPadding(
                padding: EdgeInsets.all(16.0),
                sliver: SliverToBoxAdapter(
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
