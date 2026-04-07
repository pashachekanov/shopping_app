import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.freezed.dart';
part 'token_data.g.dart';

@freezed
abstract class TokenData with _$TokenData {
  const factory TokenData({
    @JsonKey(name: 'access_token') @Default('') String accessToken,
    @JsonKey(name: 'refresh_token') @Default('') String refreshToken,
  }) = _TokenData;

  factory TokenData.fromJson(Map<String, dynamic> json) =>
      _$TokenDataFromJson(json);
}
