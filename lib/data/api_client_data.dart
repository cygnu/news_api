import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_client_data.freezed.dart';

@freezed
abstract class ApiClientData with _$ApiClientData {
  factory ApiClientData({
    required String country,
    required String apiKey,
  }) = _ApiClientData;
}
