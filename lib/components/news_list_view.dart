import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news_api/components/news_item.dart';
import 'package:news_api/data/models/news_article.dart';
import 'package:news_api/data/models/news_info.dart';
import 'package:news_api/screens/views/main_view_model.dart';

final viewProvider =
    StateNotifierProvider<MainViewNotifier, List<NewsInfo>>((ref) {
  return MainViewNotifier();
});

class NewsListView extends HookConsumerWidget {
  const NewsListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleNotifier = ref.watch(viewProvider.notifier);
    articleNotifier.getNews("us", dotenv.env["API_KEY"]);

    return Consumer(
      builder: (BuildContext context, model, _) {
        List<NewsArticle> articles = [];

        for (int i = 0; i < articles.length; i++) {
          articles.addAll(articles);
        }

        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (BuildContext context, int index) => NewsItem(
            article: articles[index],
          ),
        );
      },
    );
  }
}
