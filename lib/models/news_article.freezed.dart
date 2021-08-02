// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
class _$NewsArticleTearOff {
  const _$NewsArticleTearOff();

  _NewsArticle call(
      {String? author,
      required String title,
      required String description,
      required String url,
      String? urlToImage,
      required String publishAt}) {
    return _NewsArticle(
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishAt: publishAt,
    );
  }

  NewsArticle fromJson(Map<String, Object> json) {
    return NewsArticle.fromJson(json);
  }
}

/// @nodoc
const $NewsArticle = _$NewsArticleTearOff();

/// @nodoc
mixin _$NewsArticle {
  String? get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String get publishAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res>;
  $Res call(
      {String? author,
      String title,
      String description,
      String url,
      String? urlToImage,
      String publishAt});
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res> implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  final NewsArticle _value;
  // ignore: unused_field
  final $Res Function(NewsArticle) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishAt = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: publishAt == freezed
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsArticleCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$NewsArticleCopyWith(
          _NewsArticle value, $Res Function(_NewsArticle) then) =
      __$NewsArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? author,
      String title,
      String description,
      String url,
      String? urlToImage,
      String publishAt});
}

/// @nodoc
class __$NewsArticleCopyWithImpl<$Res> extends _$NewsArticleCopyWithImpl<$Res>
    implements _$NewsArticleCopyWith<$Res> {
  __$NewsArticleCopyWithImpl(
      _NewsArticle _value, $Res Function(_NewsArticle) _then)
      : super(_value, (v) => _then(v as _NewsArticle));

  @override
  _NewsArticle get _value => super._value as _NewsArticle;

  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishAt = freezed,
  }) {
    return _then(_NewsArticle(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishAt: publishAt == freezed
          ? _value.publishAt
          : publishAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsArticle implements _NewsArticle {
  const _$_NewsArticle(
      {this.author,
      required this.title,
      required this.description,
      required this.url,
      this.urlToImage,
      required this.publishAt});

  factory _$_NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsArticleFromJson(json);

  @override
  final String? author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String? urlToImage;
  @override
  final String publishAt;

  @override
  String toString() {
    return 'NewsArticle(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishAt: $publishAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsArticle &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.urlToImage, urlToImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToImage, urlToImage)) &&
            (identical(other.publishAt, publishAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishAt, publishAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(urlToImage) ^
      const DeepCollectionEquality().hash(publishAt);

  @JsonKey(ignore: true)
  @override
  _$NewsArticleCopyWith<_NewsArticle> get copyWith =>
      __$NewsArticleCopyWithImpl<_NewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsArticleToJson(this);
  }
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle(
      {String? author,
      required String title,
      required String description,
      required String url,
      String? urlToImage,
      required String publishAt}) = _$_NewsArticle;

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$_NewsArticle.fromJson;

  @override
  String? get author => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String? get urlToImage => throw _privateConstructorUsedError;
  @override
  String get publishAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewsArticleCopyWith<_NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}
