import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain_models/category.dart';
import 'package:shopping_app/entities/products.dart' as entity;

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
abstract class Products with _$Products {
  const factory Products({
    int? id,
    String? title,
    int? price,
    String? description,
    Category? category,
    List<String>? images,
    String? slug,
    String? creationAt,
    String? updatedAt,
    @Default(0.00) double rating,
  }) = _Products;

  factory Products.fromResponse(entity.Products response) {
    final category = Category.fromResponse(response.category!);
    final random = Random();
    final generatedRating = 0.0 + (random.nextDouble() * (5.0 - 0.0));
    return Products(
      id: response.id,
      title: response.title,
      price: response.price,
      description: response.description,
      category: category,
      images: response.images,
      slug: response.slug,
      creationAt: response.creationAt,
      updatedAt: response.updatedAt,
      rating: double.parse(generatedRating.toStringAsFixed(2)),
    );
  }

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
