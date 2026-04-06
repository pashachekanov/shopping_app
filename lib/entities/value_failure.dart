import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength(
    T failedValue,
    int max,
  ) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.numberTooLarge({
    required T failedValue,
    required num max,
  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPasswordLength({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.shortSubject({
    required T failedValue,
  }) = ShortSubject<T>;

  const factory ValueFailure.shortMessage({
    required T failedValue,
  }) = ShortMessage<T>;

  const factory ValueFailure.doNotMatch({
    required T failedValue,
  }) = DoNotMatch<T>;

  const factory ValueFailure.invalidLength({
    required T failedValue,
  }) = InvalidLength<T>;
}
