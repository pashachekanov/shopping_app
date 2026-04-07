import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/products.dart' as domain;
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';

abstract class Repository {
  Future<Either<Failure, void>> getAccessToken(GetTokenParams params);
  Future<Either<Failure, bool>> isUserLogged();
  Future<Either<Failure, List<domain.Products>>> getProducts();
  Future<Either<Failure, List<domain.Products>>> getProductsByChunks({
    required int offset,
    required int pageSize,
  });
  Future<Either<Failure, bool>> performLogout();
}
