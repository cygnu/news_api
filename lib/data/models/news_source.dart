import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_source.freezed.dart';
part 'news_source.g.dart';

@freezed
abstract class NewsSource with _$NewsSource {
  const factory NewsSource({
    String? id,
    String? name,
  }) = _NewsSource;

  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);
}
