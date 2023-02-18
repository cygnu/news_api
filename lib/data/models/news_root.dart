import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api/data/models/news_article.dart';

part 'news_root.freezed.dart';
part 'news_root.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class NewsRoot with _$NewsRoot {
  const factory NewsRoot({
    String? status,
    int? totalResults,
    List<NewsArticle>? articles,
  }) = _NewsInfo;

  factory NewsRoot.fromJson(Map<String, Object?> json) =>
      _$NewsRootFromJson(json);
}
