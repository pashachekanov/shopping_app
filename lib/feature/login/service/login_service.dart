import 'package:injectable/injectable.dart';
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';

@lazySingleton
class LoginService {
  LoginService(
    this.performLoginUsecase,
  );

  final PerformLoginUsecase performLoginUsecase;
}
