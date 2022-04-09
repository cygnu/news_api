import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/data/models/news_article.dart';

part 'news_info.g.dart';

@JsonSerializable()
class NewsInfo {
  String totalResults;
  List<NewsArticle> articles;

  NewsInfo({
    required this.totalResults,
    required this.articles,
  });

  factory NewsInfo.fromJson(Map<String, dynamic> json) =>
      _$NewsInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NewsInfoToJson(this);
}
