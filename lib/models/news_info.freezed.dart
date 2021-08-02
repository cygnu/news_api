// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsInfo _$NewsInfoFromJson(Map<String, dynamic> json) {
  return _NewsInfo.fromJson(json);
}

/// @nodoc
class _$NewsInfoTearOff {
  const _$NewsInfoTearOff();

  _NewsInfo call({required String totalResults, required NewsArticle article}) {
    return _NewsInfo(
      totalResults: totalResults,
      article: article,
    );
  }

  NewsInfo fromJson(Map<String, Object> json) {
    return NewsInfo.fromJson(json);
  }
}

/// @nodoc
const $NewsInfo = _$NewsInfoTearOff();

/// @nodoc
mixin _$NewsInfo {
  String get totalResults => throw _privateConstructorUsedError;
  NewsArticle get article => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsInfoCopyWith<NewsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoCopyWith<$Res> {
  factory $NewsInfoCopyWith(NewsInfo value, $Res Function(NewsInfo) then) =
      _$NewsInfoCopyWithImpl<$Res>;
  $Res call({String totalResults, NewsArticle article});

  $NewsArticleCopyWith<$Res> get article;
}

/// @nodoc
class _$NewsInfoCopyWithImpl<$Res> implements $NewsInfoCopyWith<$Res> {
  _$NewsInfoCopyWithImpl(this._value, this._then);

  final NewsInfo _value;
  // ignore: unused_field
  final $Res Function(NewsInfo) _then;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? article = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticle,
    ));
  }

  @override
  $NewsArticleCopyWith<$Res> get article {
    return $NewsArticleCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value));
    });
  }
}

/// @nodoc
abstract class _$NewsInfoCopyWith<$Res> implements $NewsInfoCopyWith<$Res> {
  factory _$NewsInfoCopyWith(_NewsInfo value, $Res Function(_NewsInfo) then) =
      __$NewsInfoCopyWithImpl<$Res>;
  @override
  $Res call({String totalResults, NewsArticle article});

  @override
  $NewsArticleCopyWith<$Res> get article;
}

/// @nodoc
class __$NewsInfoCopyWithImpl<$Res> extends _$NewsInfoCopyWithImpl<$Res>
    implements _$NewsInfoCopyWith<$Res> {
  __$NewsInfoCopyWithImpl(_NewsInfo _value, $Res Function(_NewsInfo) _then)
      : super(_value, (v) => _then(v as _NewsInfo));

  @override
  _NewsInfo get _value => super._value as _NewsInfo;

  @override
  $Res call({
    Object? totalResults = freezed,
    Object? article = freezed,
  }) {
    return _then(_NewsInfo(
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String,
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsInfo implements _NewsInfo {
  const _$_NewsInfo({required this.totalResults, required this.article});

  factory _$_NewsInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsInfoFromJson(json);

  @override
  final String totalResults;
  @override
  final NewsArticle article;

  @override
  String toString() {
    return 'NewsInfo(totalResults: $totalResults, article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsInfo &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.article, article) ||
                const DeepCollectionEquality().equals(other.article, article)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(article);

  @JsonKey(ignore: true)
  @override
  _$NewsInfoCopyWith<_NewsInfo> get copyWith =>
      __$NewsInfoCopyWithImpl<_NewsInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsInfoToJson(this);
  }
}

abstract class _NewsInfo implements NewsInfo {
  const factory _NewsInfo(
      {required String totalResults,
      required NewsArticle article}) = _$_NewsInfo;

  factory _NewsInfo.fromJson(Map<String, dynamic> json) = _$_NewsInfo.fromJson;

  @override
  String get totalResults => throw _privateConstructorUsedError;
  @override
  NewsArticle get article => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsInfoCopyWith<_NewsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
