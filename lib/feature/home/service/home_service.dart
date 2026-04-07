import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/products.dart';
import 'package:shopping_app/repository/usecases/get_products_usecase.dart';
import 'package:shopping_app/repository/usecases/logout_usecase.dart';
import 'package:shopping_app/repository/usecases/no_params.dart';

@lazySingleton
class HomeService {
  HomeService(this.getProductsUsecase, this.logoutUsecase);

  final GetProductsUsecase getProductsUsecase;
  final LogoutUsecase logoutUsecase;

  Future<Either<Failure, List<Products>>> getProducts() async {
    final failureOrSuccess = await getProductsUsecase.call(NoParams());
    return failureOrSuccess;
  }

  Future<Either<Failure, bool>> performLogout() async {
    final failureOrSuccess = await logoutUsecase.call(NoParams());
    return failureOrSuccess;
  }
}
