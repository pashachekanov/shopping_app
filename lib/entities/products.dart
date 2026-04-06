import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
abstract class Products with _$Products {
  const factory Products({
    @Default(0) int id,
    @Default(0) int price,
    @Default('') String title,
    @Default('') String description,
    // @Default('') List<String> images,//todo: update later
    // @Default('') String category,
  }) = _Products;
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
