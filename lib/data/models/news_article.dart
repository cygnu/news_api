import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api/data/models/news_source.dart';

part 'news_article.freezed.dart';
part 'news_article.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    NewsSource? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishAt,
    String? content,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, Object?> json) =>
      _$NewsArticleFromJson(json);
}
