import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/products.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/usecase.dart';

@injectable
class GetNotificationsUsecase extends Usecase<List<Products>, ProductsParam> {
  GetNotificationsUsecase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, List<Products>>> call(ProductsParam parameter) =>
      repository
          .getProductsByChunks(
            offset: parameter.offset,
            pageSize: parameter.pageSize,
          )
          .timeout(
            const Duration(seconds: 2),
            onTimeout: () => Left(TimeoutFailure()),
          );
}

class ProductsParam {
  ProductsParam({
    required this.offset,
    required this.pageSize,
  });
  final int offset;
  final int pageSize;
}
