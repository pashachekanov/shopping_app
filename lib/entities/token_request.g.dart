// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenRequest _$TokenRequestFromJson(Map<String, dynamic> json) =>
    _TokenRequest(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$TokenRequestToJson(_TokenRequest instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};
