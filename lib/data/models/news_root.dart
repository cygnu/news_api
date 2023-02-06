import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api/data/models/news_article.dart';

part 'news_root.freezed.dart';
part 'news_root.g.dart';

@freezed
abstract class NewsRoot with _$NewsRoot {
  const factory NewsRoot({
    String? status,
    required String totalResults,
    required List<NewsArticle> articles,
  }) = _NewsInfo;

  factory NewsRoot.fromJson(Map<String, dynamic> json) =>
      _$NewsRootFromJson(json);
}
