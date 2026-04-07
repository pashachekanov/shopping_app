part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = Loading;
  const factory HomeState.error() = Error;
  const factory HomeState.success({required List<Products> products}) = Success;
  const factory HomeState.empty() = Empty;
}
