import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain_models/value_objects.dart';
import 'package:shopping_app/entities/value_failure.dart';
import 'package:shopping_app/entities/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) => EmailAddress._(
    validateEmailAddress(input),
  );

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
