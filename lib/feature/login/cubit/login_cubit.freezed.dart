// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 EmailAddress get emailAddress; Password get password; bool get isLoading; bool get isPasswordShown; bool get sendResult; String get phone; String get email; Either<Failure, void>? get loginResult;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.password, password) || other.password == password)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPasswordShown, isPasswordShown) || other.isPasswordShown == isPasswordShown)&&(identical(other.sendResult, sendResult) || other.sendResult == sendResult)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.loginResult, loginResult) || other.loginResult == loginResult));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress,password,isLoading,isPasswordShown,sendResult,phone,email,loginResult);

@override
String toString() {
  return 'LoginState(emailAddress: $emailAddress, password: $password, isLoading: $isLoading, isPasswordShown: $isPasswordShown, sendResult: $sendResult, phone: $phone, email: $email, loginResult: $loginResult)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 EmailAddress emailAddress, Password password, bool isLoading, bool isPasswordShown, bool sendResult, String phone, String email, Either<Failure, void>? loginResult
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailAddress = null,Object? password = null,Object? isLoading = null,Object? isPasswordShown = null,Object? sendResult = null,Object? phone = null,Object? email = null,Object? loginResult = freezed,}) {
  return _then(_self.copyWith(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPasswordShown: null == isPasswordShown ? _self.isPasswordShown : isPasswordShown // ignore: cast_nullable_to_non_nullable
as bool,sendResult: null == sendResult ? _self.sendResult : sendResult // ignore: cast_nullable_to_non_nullable
as bool,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,loginResult: freezed == loginResult ? _self.loginResult : loginResult // ignore: cast_nullable_to_non_nullable
as Either<Failure, void>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginInitial value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginInitial value)  initial,}){
final _that = this;
switch (_that) {
case LoginInitial():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginInitial value)?  initial,}){
final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EmailAddress emailAddress,  Password password,  bool isLoading,  bool isPasswordShown,  bool sendResult,  String phone,  String email,  Either<Failure, void>? loginResult)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that.emailAddress,_that.password,_that.isLoading,_that.isPasswordShown,_that.sendResult,_that.phone,_that.email,_that.loginResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EmailAddress emailAddress,  Password password,  bool isLoading,  bool isPasswordShown,  bool sendResult,  String phone,  String email,  Either<Failure, void>? loginResult)  initial,}) {final _that = this;
switch (_that) {
case LoginInitial():
return initial(_that.emailAddress,_that.password,_that.isLoading,_that.isPasswordShown,_that.sendResult,_that.phone,_that.email,_that.loginResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EmailAddress emailAddress,  Password password,  bool isLoading,  bool isPasswordShown,  bool sendResult,  String phone,  String email,  Either<Failure, void>? loginResult)?  initial,}) {final _that = this;
switch (_that) {
case LoginInitial() when initial != null:
return initial(_that.emailAddress,_that.password,_that.isLoading,_that.isPasswordShown,_that.sendResult,_that.phone,_that.email,_that.loginResult);case _:
  return null;

}
}

}

/// @nodoc


class LoginInitial implements LoginState {
  const LoginInitial({required this.emailAddress, required this.password, required this.isLoading, required this.isPasswordShown, required this.sendResult, required this.phone, required this.email, this.loginResult});
  

@override final  EmailAddress emailAddress;
@override final  Password password;
@override final  bool isLoading;
@override final  bool isPasswordShown;
@override final  bool sendResult;
@override final  String phone;
@override final  String email;
@override final  Either<Failure, void>? loginResult;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginInitialCopyWith<LoginInitial> get copyWith => _$LoginInitialCopyWithImpl<LoginInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginInitial&&(identical(other.emailAddress, emailAddress) || other.emailAddress == emailAddress)&&(identical(other.password, password) || other.password == password)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPasswordShown, isPasswordShown) || other.isPasswordShown == isPasswordShown)&&(identical(other.sendResult, sendResult) || other.sendResult == sendResult)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.loginResult, loginResult) || other.loginResult == loginResult));
}


@override
int get hashCode => Object.hash(runtimeType,emailAddress,password,isLoading,isPasswordShown,sendResult,phone,email,loginResult);

@override
String toString() {
  return 'LoginState.initial(emailAddress: $emailAddress, password: $password, isLoading: $isLoading, isPasswordShown: $isPasswordShown, sendResult: $sendResult, phone: $phone, email: $email, loginResult: $loginResult)';
}


}

/// @nodoc
abstract mixin class $LoginInitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginInitialCopyWith(LoginInitial value, $Res Function(LoginInitial) _then) = _$LoginInitialCopyWithImpl;
@override @useResult
$Res call({
 EmailAddress emailAddress, Password password, bool isLoading, bool isPasswordShown, bool sendResult, String phone, String email, Either<Failure, void>? loginResult
});




}
/// @nodoc
class _$LoginInitialCopyWithImpl<$Res>
    implements $LoginInitialCopyWith<$Res> {
  _$LoginInitialCopyWithImpl(this._self, this._then);

  final LoginInitial _self;
  final $Res Function(LoginInitial) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailAddress = null,Object? password = null,Object? isLoading = null,Object? isPasswordShown = null,Object? sendResult = null,Object? phone = null,Object? email = null,Object? loginResult = freezed,}) {
  return _then(LoginInitial(
emailAddress: null == emailAddress ? _self.emailAddress : emailAddress // ignore: cast_nullable_to_non_nullable
as EmailAddress,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPasswordShown: null == isPasswordShown ? _self.isPasswordShown : isPasswordShown // ignore: cast_nullable_to_non_nullable
as bool,sendResult: null == sendResult ? _self.sendResult : sendResult // ignore: cast_nullable_to_non_nullable
as bool,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,loginResult: freezed == loginResult ? _self.loginResult : loginResult // ignore: cast_nullable_to_non_nullable
as Either<Failure, void>?,
  ));
}


}

// dart format on
