// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Products {

 int? get id; String? get title; int? get price; String? get description; Category? get category; List<String>? get images; String? get slug; String? get creationAt; String? get updatedAt; double get rating;
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsCopyWith<Products> get copyWith => _$ProductsCopyWithImpl<Products>(this as Products, _$identity);

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Products&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.creationAt, creationAt) || other.creationAt == creationAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,const DeepCollectionEquality().hash(images),slug,creationAt,updatedAt,rating);

@override
String toString() {
  return 'Products(id: $id, title: $title, price: $price, description: $description, category: $category, images: $images, slug: $slug, creationAt: $creationAt, updatedAt: $updatedAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $ProductsCopyWith<$Res>  {
  factory $ProductsCopyWith(Products value, $Res Function(Products) _then) = _$ProductsCopyWithImpl;
@useResult
$Res call({
 int? id, String? title, int? price, String? description, Category? category, List<String>? images, String? slug, String? creationAt, String? updatedAt, double rating
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$ProductsCopyWithImpl<$Res>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._self, this._then);

  final Products _self;
  final $Res Function(Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? price = freezed,Object? description = freezed,Object? category = freezed,Object? images = freezed,Object? slug = freezed,Object? creationAt = freezed,Object? updatedAt = freezed,Object? rating = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,creationAt: freezed == creationAt ? _self.creationAt : creationAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Products].
extension ProductsPatterns on Products {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Products value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Products value)  $default,){
final _that = this;
switch (_that) {
case _Products():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Products value)?  $default,){
final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? title,  int? price,  String? description,  Category? category,  List<String>? images,  String? slug,  String? creationAt,  String? updatedAt,  double rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.images,_that.slug,_that.creationAt,_that.updatedAt,_that.rating);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? title,  int? price,  String? description,  Category? category,  List<String>? images,  String? slug,  String? creationAt,  String? updatedAt,  double rating)  $default,) {final _that = this;
switch (_that) {
case _Products():
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.images,_that.slug,_that.creationAt,_that.updatedAt,_that.rating);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? title,  int? price,  String? description,  Category? category,  List<String>? images,  String? slug,  String? creationAt,  String? updatedAt,  double rating)?  $default,) {final _that = this;
switch (_that) {
case _Products() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.category,_that.images,_that.slug,_that.creationAt,_that.updatedAt,_that.rating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Products implements Products {
  const _Products({this.id, this.title, this.price, this.description, this.category, final  List<String>? images, this.slug, this.creationAt, this.updatedAt, this.rating = 0.00}): _images = images;
  factory _Products.fromJson(Map<String, dynamic> json) => _$ProductsFromJson(json);

@override final  int? id;
@override final  String? title;
@override final  int? price;
@override final  String? description;
@override final  Category? category;
 final  List<String>? _images;
@override List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? slug;
@override final  String? creationAt;
@override final  String? updatedAt;
@override@JsonKey() final  double rating;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsCopyWith<_Products> get copyWith => __$ProductsCopyWithImpl<_Products>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Products&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.creationAt, creationAt) || other.creationAt == creationAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,const DeepCollectionEquality().hash(_images),slug,creationAt,updatedAt,rating);

@override
String toString() {
  return 'Products(id: $id, title: $title, price: $price, description: $description, category: $category, images: $images, slug: $slug, creationAt: $creationAt, updatedAt: $updatedAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$ProductsCopyWith(_Products value, $Res Function(_Products) _then) = __$ProductsCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? title, int? price, String? description, Category? category, List<String>? images, String? slug, String? creationAt, String? updatedAt, double rating
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$ProductsCopyWithImpl<$Res>
    implements _$ProductsCopyWith<$Res> {
  __$ProductsCopyWithImpl(this._self, this._then);

  final _Products _self;
  final $Res Function(_Products) _then;

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? price = freezed,Object? description = freezed,Object? category = freezed,Object? images = freezed,Object? slug = freezed,Object? creationAt = freezed,Object? updatedAt = freezed,Object? rating = null,}) {
  return _then(_Products(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,creationAt: freezed == creationAt ? _self.creationAt : creationAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of Products
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
