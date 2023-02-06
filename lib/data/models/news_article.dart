import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api/data/models/news_source.dart';

part 'news_article.freezed.dart';
part 'news_article.g.dart';

@freezed
abstract class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    List<NewsSource>? source,
    String? author,
    required String title,
    required String description,
    required String url,
    String? urlToImage,
    required String publishAt,
    String? content,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);
}
