import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/feature/login/cubit/login_cubit.dart';
import 'package:shopping_app/injection/injection.dart';
import 'package:shopping_app/localization/shopping_app_localization.dart';
import 'package:shopping_app/routes/router.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<LoginCubit>(),
    child: BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.isUserLogged == true) {
          context.router.replaceAll(
            [
              const HomeRoute(),
            ],
          );
        }
      },
      builder: (context, state) => Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            const Image(
              image: AssetImage(
                'assets/login_background.png',
              ),
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/svg/brand_logo.svg',
                  width: 58,
                  height: 58,
                ),
                const SizedBox(height: 17),
                Text(
                  ShoppingAppLocalization.of(context).app_title,
                  style: TextTheme.of(
                    context,
                  ).titleMedium!.copyWith(fontSize: 28),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => context.router.push(
                        LoginView(cubit: context.read<LoginCubit>()),
                      ),
                      child: Text(ShoppingAppLocalization.of(context).login),
                    ),
                  ),
                ),
                const SizedBox(height: 166),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
