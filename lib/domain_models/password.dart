import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain_models/value_objects.dart';
import 'package:shopping_app/entities/value_failure.dart';
import 'package:shopping_app/entities/value_validators.dart';

class Password extends ValueObject<String> {
  factory Password(String input) => Password._(
    validatePassword(input),
  );

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
