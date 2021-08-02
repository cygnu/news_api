import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/models/news_article.dart';

part 'news_info.freezed.dart';
part 'news_info.g.dart';

@freezed
class NewsInfo with _$NewsInfo {
  const factory NewsInfo({
    required String totalResults,
    required NewsArticle article,
  }) = _NewsInfo;

  factory NewsInfo.fromJson(Map<String, dynamic> json) =>
      _$NewsInfoFromJson(json);
}
