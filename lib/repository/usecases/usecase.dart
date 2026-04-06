import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain_models/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params parameter);
}
