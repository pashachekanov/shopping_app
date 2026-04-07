import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/email_address.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/password.dart';
import 'package:shopping_app/feature/login/service/login_service.dart';
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';
import 'package:shopping_app/routes/router.dart';
import 'package:shopping_app/routes/router.gr.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.service,
    this.router,
  ) : super(
        LoginState.initialized(),
      ) {
    checkCreds();
  }

  final LoginService service;
  final AppRouter router;

  Future<void> checkCreds() async {
    final isUserLogged = await service.isUserLogged();

    isUserLogged.fold(
      (l) => emit(
        state.copyWith(
          isUserLogged: false,
        ),
      ),
      (r) {
        if (r == true) {
          emit(state.copyWith(isUserLogged: r));
        } else {
          return;
        }
      },
    );
  }

  Future<void> performLogin() async {
    Either<Failure, void>? failureOrSuccess;

    final isEmailValid = (state as LoginInitial).emailAddress.isValid();
    final isPasswordValid = (state as LoginInitial).password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isLoading: true,
          loginResult: null,
        ),
      );
      final params = GetTokenParams(
        email: (state as LoginInitial).emailAddress.getOrCrash(),
        password: (state as LoginInitial).password.getOrCrash(),
      );

      failureOrSuccess = await service.performLoginUsecase(params);
    }
    emit(
      state.copyWith(
        isLoading: false,
        loginResult: failureOrSuccess,
      ),
    );
  }

  Future<void> emailChanged(String value) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(value),
        loginResult: null,
      ),
    );
  }

  Future<void> passwordChanged(String value) async {
    emit(
      state.copyWith(
        password: Password(value),
        loginResult: null,
      ),
    );
  }

  Future<void> passwordVisibilityToggled() async {
    emit(
      state.copyWith(
        isPasswordShown: !state.isPasswordShown,
        loginResult: null,
      ),
    );
  }

  Future<void> openHome() => router.replace(const HomeRoute());
}
