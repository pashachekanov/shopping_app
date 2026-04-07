// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Products _$ProductsFromJson(Map<String, dynamic> json) => _Products(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  price: (json['price'] as num?)?.toInt(),
  description: json['description'] as String?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  slug: json['slug'] as String?,
  creationAt: json['creationAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  rating: (json['rating'] as num?)?.toDouble() ?? 0.00,
);

Map<String, dynamic> _$ProductsToJson(_Products instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'price': instance.price,
  'description': instance.description,
  'category': instance.category,
  'images': instance.images,
  'slug': instance.slug,
  'creationAt': instance.creationAt,
  'updatedAt': instance.updatedAt,
  'rating': instance.rating,
};
