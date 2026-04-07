// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenData _$TokenDataFromJson(Map<String, dynamic> json) => _TokenData(
  accessToken: json['access_token'] as String? ?? '',
  refreshToken: json['refresh_token'] as String? ?? '',
);

Map<String, dynamic> _$TokenDataToJson(_TokenData instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
