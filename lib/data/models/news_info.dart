import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_api/data/models/news_article.dart';

part 'news_info.freezed.dart';
part 'news_info.g.dart';

@freezed
abstract class NewsInfo with _$NewsInfo {
  factory NewsInfo({
    String? status,
    required String totalResults,
    required List<NewsArticle> articles,
  }) = _NewsInfo;

  factory NewsInfo.fromJson(Map<String, dynamic> json) =>
      _$NewsInfoFromJson(json);
}
