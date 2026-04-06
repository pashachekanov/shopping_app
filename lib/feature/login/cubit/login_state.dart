part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial({
    required EmailAddress emailAddress,
    required Password password,
    required bool isLoading,
    required bool isPasswordShown,
    required bool sendResult,
    required String phone,
    required String email,
    Either<Failure, void>? loginResult,
  }) = LoginInitial;

  factory LoginState.initialized() => LoginState.initial(
    emailAddress: EmailAddress(''),
    password: Password(''),
    isLoading: false,
    isPasswordShown: false,
    sendResult: false,
    phone: '',
    email: '',
  );
}
