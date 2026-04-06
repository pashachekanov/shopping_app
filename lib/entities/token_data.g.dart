// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenData _$TokenDataFromJson(Map<String, dynamic> json) => _TokenData(
  access_token: json['access_token'] as String? ?? '',
  refresh_token: json['refresh_token'] as String? ?? '',
);

Map<String, dynamic> _$TokenDataToJson(_TokenData instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
