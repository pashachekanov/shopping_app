import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/entities/category.dart';

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
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
