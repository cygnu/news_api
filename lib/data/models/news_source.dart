import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_source.freezed.dart';
part 'news_source.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class NewsSource with _$NewsSource {
  const factory NewsSource({
    String? id,
    String? name,
  }) = _NewsSource;

  factory NewsSource.fromJson(Map<String, Object?> json) =>
      _$NewsSourceFromJson(json);
}
