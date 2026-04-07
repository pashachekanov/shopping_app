import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/feature/home/cubit/home_cubit.dart';
import 'package:shopping_app/feature/home/home_view.dart';
import 'package:shopping_app/injection/injection.dart';
import 'package:shopping_app/localization/shopping_app_localization.dart';
import 'package:shopping_app/routes/router.gr.dart';
import 'package:shopping_app/widgets/empty_view.dart';
import 'package:shopping_app/widgets/error_view.dart';
import 'package:shopping_app/widgets/loading_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<HomeCubit>()..initialize(),
    child: BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final _textTheme = Theme.of(context).textTheme;
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: state.map(
              success: (r) => Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ShoppingAppLocalization.of(context).home_welcome(
                          'John',
                        ), //todo: update when will add user api call
                        style: _textTheme.headlineMedium!.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      IconButton(
                        style: IconButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () async {
                          final result = await context
                              .read<HomeCubit>()
                              .logout();
                          if (result == true) {
                            await context.router.replaceAll([
                              const LoginRoute(),
                            ]);
                          }
                        },
                        icon: const Icon(Icons.logout),
                      ),
                    ],
                  ),
                  Expanded(
                    child: HomeView(
                      products: r.products,
                    ),
                  ),
                ],
              ),
              loading: (_) => const LoadingView(),
              error: (_) => ErrorView(
                onPressed: () => context.read<HomeCubit>().reload(),
              ),
              empty: (_) => EmptyView(
                onPressed: () => context.read<HomeCubit>().reload(),
              ),
            ),
          ),
        );
      },
    ),
  );
}
