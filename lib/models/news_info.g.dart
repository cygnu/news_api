// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsInfo _$_$_NewsInfoFromJson(Map<String, dynamic> json) {
  return _$_NewsInfo(
    totalResults: json['totalResults'] as String,
    article: NewsArticle.fromJson(json['article'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewsInfoToJson(_$_NewsInfo instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'article': instance.article,
    };
