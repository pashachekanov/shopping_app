// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Products _$ProductsFromJson(Map<String, dynamic> json) => _Products(
  id: (json['id'] as num?)?.toInt() ?? 0,
  price: (json['price'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
);

Map<String, dynamic> _$ProductsToJson(_Products instance) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'title': instance.title,
  'description': instance.description,
};
