import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';

abstract class Repository {
  Future<Either<Failure, void>> getAccessToken(GetTokenParams params);
}
