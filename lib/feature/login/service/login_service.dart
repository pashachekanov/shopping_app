import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/repository/usecases/is_user_logged.dart';
import 'package:shopping_app/repository/usecases/no_params.dart';
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';

@lazySingleton
class LoginService {
  LoginService(
    this.performLoginUsecase,
    this.isUserLoggedUsecase,
  );

  final PerformLoginUsecase performLoginUsecase;
  final IsUserLoggedUsecase isUserLoggedUsecase;

  Future<Either<Failure, bool>> isUserLogged() async {
    final isUserLogged = await isUserLoggedUsecase(NoParams());
    return isUserLogged;
  }
}
