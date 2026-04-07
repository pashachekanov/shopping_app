import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/entities/category.dart' as entity;

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    String? image,
    String? slug,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  factory Category.fromResponse(entity.Category response) => Category(
    id: response.id,
    name: response.name,
    image: response.image,
    slug: response.slug,
  );
}
