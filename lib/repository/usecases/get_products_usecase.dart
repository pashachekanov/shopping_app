import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/products.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/no_params.dart';
import 'package:shopping_app/repository/usecases/usecase.dart';

@injectable
class GetProductsUsecase extends Usecase<List<Products>, NoParams> {
  GetProductsUsecase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, List<Products>>> call(
    NoParams parameter,
  ) => repository.getProducts().timeout(
    const Duration(seconds: 2),
    onTimeout: () => Left(TimeoutFailure()),
  );
}
