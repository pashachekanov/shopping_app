import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/products.dart';
import 'package:shopping_app/feature/home/service/home_service.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._homeService,
  ) : super(const HomeState.loading());

  final HomeService _homeService;

  Future<void> initialize() async {
    final categories = await _homeService.getProducts();
    if (isClosed) return;
    emit(
      categories.fold(
        (_) => const HomeState.error(),
        (p) {
          if (p.isEmpty) {
            return const HomeState.empty();
          } else {
            print(p[0].images);
            return HomeState.success(products: p);
          }
        },
      ),
    );
  }

  Future<void> reload() async {
    emit(const HomeState.loading());
    await initialize();
  }

  Future<bool> logout() async {
    final result = await _homeService.performLogout();
    return result.isRight() ? true : false;
  }
}
