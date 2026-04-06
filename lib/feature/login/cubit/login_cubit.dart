import 'package:auto_route/auto_route.dart';
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
    this.router, {
    required this.service,
  }) : super(
         LoginState.initialized(),
       );

  final AppRouter router;
  final LoginService service;

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

      await service.performLoginUsecase(params);
    }
    emit(
      state.copyWith(
        isLoading: false,
        loginResult: failureOrSuccess,
      ),
    );
  }

  Future<void> openLoginForm(
    StackRouter router,
  ) => router.push(const LoginView());

  void goBack(
    StackRouter router,
  ) => router.pop();

  Future<void> openHome(
    StackRouter router,
  ) => router.replace(const LoginRoute()); //todo: add
}
