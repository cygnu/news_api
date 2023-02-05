import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_article.freezed.dart';
part 'news_article.g.dart';

@freezed
abstract class NewsArticle with _$NewsArticle {
  factory NewsArticle({
    String? author,
    required String title,
    required String description,
    required String url,
    String? urlToImage,
    required String publishAt,
  }) = _NewsArticle;

  factory NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleFromJson(json);
}
