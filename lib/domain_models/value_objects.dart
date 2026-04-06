import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:shopping_app/entities/exceptions.dart';
import 'package:shopping_app/entities/value_failure.dart';

abstract class IValidatable {
  bool isValid();
}

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  T getOrElse(T dflt) => value.getOrElse(() => dflt);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit => value.fold(
    left,
    (r) => right(unit),
  );

  @override
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
