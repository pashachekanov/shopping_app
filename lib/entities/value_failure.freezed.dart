// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValueFailure<T> {

 T get failedValue;
/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => _$ValueFailureCopyWithImpl<T, ValueFailure<T>>(this as ValueFailure<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueFailure<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) _then) = _$ValueFailureCopyWithImpl;
@useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._self, this._then);

  final ValueFailure<T> _self;
  final $Res Function(ValueFailure<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_self.copyWith(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueFailure].
extension ValueFailurePatterns<T> on ValueFailure<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExceedingLength<T> value)?  exceedingLength,TResult Function( Empty<T> value)?  empty,TResult Function( Multiline<T> value)?  multiline,TResult Function( NumberTooLarge<T> value)?  numberTooLarge,TResult Function( ListTooLong<T> value)?  listTooLong,TResult Function( InvalidEmail<T> value)?  invalidEmail,TResult Function( ShortPassword<T> value)?  invalidPasswordLength,TResult Function( ShortSubject<T> value)?  shortSubject,TResult Function( ShortMessage<T> value)?  shortMessage,TResult Function( DoNotMatch<T> value)?  doNotMatch,TResult Function( InvalidLength<T> value)?  invalidLength,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExceedingLength() when exceedingLength != null:
return exceedingLength(_that);case Empty() when empty != null:
return empty(_that);case Multiline() when multiline != null:
return multiline(_that);case NumberTooLarge() when numberTooLarge != null:
return numberTooLarge(_that);case ListTooLong() when listTooLong != null:
return listTooLong(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case ShortPassword() when invalidPasswordLength != null:
return invalidPasswordLength(_that);case ShortSubject() when shortSubject != null:
return shortSubject(_that);case ShortMessage() when shortMessage != null:
return shortMessage(_that);case DoNotMatch() when doNotMatch != null:
return doNotMatch(_that);case InvalidLength() when invalidLength != null:
return invalidLength(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExceedingLength<T> value)  exceedingLength,required TResult Function( Empty<T> value)  empty,required TResult Function( Multiline<T> value)  multiline,required TResult Function( NumberTooLarge<T> value)  numberTooLarge,required TResult Function( ListTooLong<T> value)  listTooLong,required TResult Function( InvalidEmail<T> value)  invalidEmail,required TResult Function( ShortPassword<T> value)  invalidPasswordLength,required TResult Function( ShortSubject<T> value)  shortSubject,required TResult Function( ShortMessage<T> value)  shortMessage,required TResult Function( DoNotMatch<T> value)  doNotMatch,required TResult Function( InvalidLength<T> value)  invalidLength,}){
final _that = this;
switch (_that) {
case ExceedingLength():
return exceedingLength(_that);case Empty():
return empty(_that);case Multiline():
return multiline(_that);case NumberTooLarge():
return numberTooLarge(_that);case ListTooLong():
return listTooLong(_that);case InvalidEmail():
return invalidEmail(_that);case ShortPassword():
return invalidPasswordLength(_that);case ShortSubject():
return shortSubject(_that);case ShortMessage():
return shortMessage(_that);case DoNotMatch():
return doNotMatch(_that);case InvalidLength():
return invalidLength(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExceedingLength<T> value)?  exceedingLength,TResult? Function( Empty<T> value)?  empty,TResult? Function( Multiline<T> value)?  multiline,TResult? Function( NumberTooLarge<T> value)?  numberTooLarge,TResult? Function( ListTooLong<T> value)?  listTooLong,TResult? Function( InvalidEmail<T> value)?  invalidEmail,TResult? Function( ShortPassword<T> value)?  invalidPasswordLength,TResult? Function( ShortSubject<T> value)?  shortSubject,TResult? Function( ShortMessage<T> value)?  shortMessage,TResult? Function( DoNotMatch<T> value)?  doNotMatch,TResult? Function( InvalidLength<T> value)?  invalidLength,}){
final _that = this;
switch (_that) {
case ExceedingLength() when exceedingLength != null:
return exceedingLength(_that);case Empty() when empty != null:
return empty(_that);case Multiline() when multiline != null:
return multiline(_that);case NumberTooLarge() when numberTooLarge != null:
return numberTooLarge(_that);case ListTooLong() when listTooLong != null:
return listTooLong(_that);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that);case ShortPassword() when invalidPasswordLength != null:
return invalidPasswordLength(_that);case ShortSubject() when shortSubject != null:
return shortSubject(_that);case ShortMessage() when shortMessage != null:
return shortMessage(_that);case DoNotMatch() when doNotMatch != null:
return doNotMatch(_that);case InvalidLength() when invalidLength != null:
return invalidLength(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T failedValue,  int max)?  exceedingLength,TResult Function( T failedValue)?  empty,TResult Function( T failedValue)?  multiline,TResult Function( T failedValue,  num max)?  numberTooLarge,TResult Function( T failedValue,  int max)?  listTooLong,TResult Function( T failedValue)?  invalidEmail,TResult Function( T failedValue)?  invalidPasswordLength,TResult Function( T failedValue)?  shortSubject,TResult Function( T failedValue)?  shortMessage,TResult Function( T failedValue)?  doNotMatch,TResult Function( T failedValue)?  invalidLength,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExceedingLength() when exceedingLength != null:
return exceedingLength(_that.failedValue,_that.max);case Empty() when empty != null:
return empty(_that.failedValue);case Multiline() when multiline != null:
return multiline(_that.failedValue);case NumberTooLarge() when numberTooLarge != null:
return numberTooLarge(_that.failedValue,_that.max);case ListTooLong() when listTooLong != null:
return listTooLong(_that.failedValue,_that.max);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case ShortPassword() when invalidPasswordLength != null:
return invalidPasswordLength(_that.failedValue);case ShortSubject() when shortSubject != null:
return shortSubject(_that.failedValue);case ShortMessage() when shortMessage != null:
return shortMessage(_that.failedValue);case DoNotMatch() when doNotMatch != null:
return doNotMatch(_that.failedValue);case InvalidLength() when invalidLength != null:
return invalidLength(_that.failedValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T failedValue,  int max)  exceedingLength,required TResult Function( T failedValue)  empty,required TResult Function( T failedValue)  multiline,required TResult Function( T failedValue,  num max)  numberTooLarge,required TResult Function( T failedValue,  int max)  listTooLong,required TResult Function( T failedValue)  invalidEmail,required TResult Function( T failedValue)  invalidPasswordLength,required TResult Function( T failedValue)  shortSubject,required TResult Function( T failedValue)  shortMessage,required TResult Function( T failedValue)  doNotMatch,required TResult Function( T failedValue)  invalidLength,}) {final _that = this;
switch (_that) {
case ExceedingLength():
return exceedingLength(_that.failedValue,_that.max);case Empty():
return empty(_that.failedValue);case Multiline():
return multiline(_that.failedValue);case NumberTooLarge():
return numberTooLarge(_that.failedValue,_that.max);case ListTooLong():
return listTooLong(_that.failedValue,_that.max);case InvalidEmail():
return invalidEmail(_that.failedValue);case ShortPassword():
return invalidPasswordLength(_that.failedValue);case ShortSubject():
return shortSubject(_that.failedValue);case ShortMessage():
return shortMessage(_that.failedValue);case DoNotMatch():
return doNotMatch(_that.failedValue);case InvalidLength():
return invalidLength(_that.failedValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T failedValue,  int max)?  exceedingLength,TResult? Function( T failedValue)?  empty,TResult? Function( T failedValue)?  multiline,TResult? Function( T failedValue,  num max)?  numberTooLarge,TResult? Function( T failedValue,  int max)?  listTooLong,TResult? Function( T failedValue)?  invalidEmail,TResult? Function( T failedValue)?  invalidPasswordLength,TResult? Function( T failedValue)?  shortSubject,TResult? Function( T failedValue)?  shortMessage,TResult? Function( T failedValue)?  doNotMatch,TResult? Function( T failedValue)?  invalidLength,}) {final _that = this;
switch (_that) {
case ExceedingLength() when exceedingLength != null:
return exceedingLength(_that.failedValue,_that.max);case Empty() when empty != null:
return empty(_that.failedValue);case Multiline() when multiline != null:
return multiline(_that.failedValue);case NumberTooLarge() when numberTooLarge != null:
return numberTooLarge(_that.failedValue,_that.max);case ListTooLong() when listTooLong != null:
return listTooLong(_that.failedValue,_that.max);case InvalidEmail() when invalidEmail != null:
return invalidEmail(_that.failedValue);case ShortPassword() when invalidPasswordLength != null:
return invalidPasswordLength(_that.failedValue);case ShortSubject() when shortSubject != null:
return shortSubject(_that.failedValue);case ShortMessage() when shortMessage != null:
return shortMessage(_that.failedValue);case DoNotMatch() when doNotMatch != null:
return doNotMatch(_that.failedValue);case InvalidLength() when invalidLength != null:
return invalidLength(_that.failedValue);case _:
  return null;

}
}

}

/// @nodoc


class ExceedingLength<T> implements ValueFailure<T> {
  const ExceedingLength(this.failedValue, this.max);
  

@override final  T failedValue;
 final  int max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith => _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExceedingLength<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),max);

@override
String toString() {
  return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
}


}

/// @nodoc
abstract mixin class $ExceedingLengthCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(ExceedingLength<T> value, $Res Function(ExceedingLength<T>) _then) = _$ExceedingLengthCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int max
});




}
/// @nodoc
class _$ExceedingLengthCopyWithImpl<T,$Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(this._self, this._then);

  final ExceedingLength<T> _self;
  final $Res Function(ExceedingLength<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? max = null,}) {
  return _then(ExceedingLength<T>(
freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Empty<T> implements ValueFailure<T> {
  const Empty({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyCopyWith<T, Empty<T>> get copyWith => _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empty<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $EmptyCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) _then) = _$EmptyCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$EmptyCopyWithImpl<T,$Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(this._self, this._then);

  final Empty<T> _self;
  final $Res Function(Empty<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(Empty<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Multiline<T> implements ValueFailure<T> {
  const Multiline({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultilineCopyWith<T, Multiline<T>> get copyWith => _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Multiline<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $MultilineCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(Multiline<T> value, $Res Function(Multiline<T>) _then) = _$MultilineCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$MultilineCopyWithImpl<T,$Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(this._self, this._then);

  final Multiline<T> _self;
  final $Res Function(Multiline<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(Multiline<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class NumberTooLarge<T> implements ValueFailure<T> {
  const NumberTooLarge({required this.failedValue, required this.max});
  

@override final  T failedValue;
 final  num max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberTooLargeCopyWith<T, NumberTooLarge<T>> get copyWith => _$NumberTooLargeCopyWithImpl<T, NumberTooLarge<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberTooLarge<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),max);

@override
String toString() {
  return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
}


}

/// @nodoc
abstract mixin class $NumberTooLargeCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $NumberTooLargeCopyWith(NumberTooLarge<T> value, $Res Function(NumberTooLarge<T>) _then) = _$NumberTooLargeCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, num max
});




}
/// @nodoc
class _$NumberTooLargeCopyWithImpl<T,$Res>
    implements $NumberTooLargeCopyWith<T, $Res> {
  _$NumberTooLargeCopyWithImpl(this._self, this._then);

  final NumberTooLarge<T> _self;
  final $Res Function(NumberTooLarge<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? max = null,}) {
  return _then(NumberTooLarge<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

/// @nodoc


class ListTooLong<T> implements ValueFailure<T> {
  const ListTooLong({required this.failedValue, required this.max});
  

@override final  T failedValue;
 final  int max;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListTooLongCopyWith<T, ListTooLong<T>> get copyWith => _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListTooLong<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue),max);

@override
String toString() {
  return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
}


}

/// @nodoc
abstract mixin class $ListTooLongCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(ListTooLong<T> value, $Res Function(ListTooLong<T>) _then) = _$ListTooLongCopyWithImpl;
@override @useResult
$Res call({
 T failedValue, int max
});




}
/// @nodoc
class _$ListTooLongCopyWithImpl<T,$Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(this._self, this._then);

  final ListTooLong<T> _self;
  final $Res Function(ListTooLong<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,Object? max = null,}) {
  return _then(ListTooLong<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InvalidEmail<T> implements ValueFailure<T> {
  const InvalidEmail({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith => _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmail<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidEmailCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(InvalidEmail<T> value, $Res Function(InvalidEmail<T>) _then) = _$InvalidEmailCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidEmailCopyWithImpl<T,$Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(this._self, this._then);

  final InvalidEmail<T> _self;
  final $Res Function(InvalidEmail<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidEmail<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ShortPassword<T> implements ValueFailure<T> {
  const ShortPassword({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith => _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortPassword<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidPasswordLength(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ShortPasswordCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(ShortPassword<T> value, $Res Function(ShortPassword<T>) _then) = _$ShortPasswordCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ShortPasswordCopyWithImpl<T,$Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(this._self, this._then);

  final ShortPassword<T> _self;
  final $Res Function(ShortPassword<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(ShortPassword<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ShortSubject<T> implements ValueFailure<T> {
  const ShortSubject({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortSubjectCopyWith<T, ShortSubject<T>> get copyWith => _$ShortSubjectCopyWithImpl<T, ShortSubject<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortSubject<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.shortSubject(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ShortSubjectCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortSubjectCopyWith(ShortSubject<T> value, $Res Function(ShortSubject<T>) _then) = _$ShortSubjectCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ShortSubjectCopyWithImpl<T,$Res>
    implements $ShortSubjectCopyWith<T, $Res> {
  _$ShortSubjectCopyWithImpl(this._self, this._then);

  final ShortSubject<T> _self;
  final $Res Function(ShortSubject<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(ShortSubject<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ShortMessage<T> implements ValueFailure<T> {
  const ShortMessage({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortMessageCopyWith<T, ShortMessage<T>> get copyWith => _$ShortMessageCopyWithImpl<T, ShortMessage<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortMessage<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.shortMessage(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $ShortMessageCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortMessageCopyWith(ShortMessage<T> value, $Res Function(ShortMessage<T>) _then) = _$ShortMessageCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$ShortMessageCopyWithImpl<T,$Res>
    implements $ShortMessageCopyWith<T, $Res> {
  _$ShortMessageCopyWithImpl(this._self, this._then);

  final ShortMessage<T> _self;
  final $Res Function(ShortMessage<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(ShortMessage<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class DoNotMatch<T> implements ValueFailure<T> {
  const DoNotMatch({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoNotMatchCopyWith<T, DoNotMatch<T>> get copyWith => _$DoNotMatchCopyWithImpl<T, DoNotMatch<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoNotMatch<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.doNotMatch(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $DoNotMatchCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $DoNotMatchCopyWith(DoNotMatch<T> value, $Res Function(DoNotMatch<T>) _then) = _$DoNotMatchCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$DoNotMatchCopyWithImpl<T,$Res>
    implements $DoNotMatchCopyWith<T, $Res> {
  _$DoNotMatchCopyWithImpl(this._self, this._then);

  final DoNotMatch<T> _self;
  final $Res Function(DoNotMatch<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(DoNotMatch<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class InvalidLength<T> implements ValueFailure<T> {
  const InvalidLength({required this.failedValue});
  

@override final  T failedValue;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidLengthCopyWith<T, InvalidLength<T>> get copyWith => _$InvalidLengthCopyWithImpl<T, InvalidLength<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidLength<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@override
String toString() {
  return 'ValueFailure<$T>.invalidLength(failedValue: $failedValue)';
}


}

/// @nodoc
abstract mixin class $InvalidLengthCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidLengthCopyWith(InvalidLength<T> value, $Res Function(InvalidLength<T>) _then) = _$InvalidLengthCopyWithImpl;
@override @useResult
$Res call({
 T failedValue
});




}
/// @nodoc
class _$InvalidLengthCopyWithImpl<T,$Res>
    implements $InvalidLengthCopyWith<T, $Res> {
  _$InvalidLengthCopyWithImpl(this._self, this._then);

  final InvalidLength<T> _self;
  final $Res Function(InvalidLength<T>) _then;

/// Create a copy of ValueFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failedValue = freezed,}) {
  return _then(InvalidLength<T>(
failedValue: freezed == failedValue ? _self.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

// dart format on
