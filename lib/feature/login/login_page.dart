import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/feature/login/cubit/login_cubit.dart';
import 'package:shopping_app/injection/injection.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => getIt<LoginCubit>(),
    child: BlocBuilder<LoginCubit, LoginState>(
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
                const Text(
                  'Fake Store',
                  style: TextStyle(
                    fontFamily: 'MyCustomFont',
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => context.read<LoginCubit>().openLoginForm(
                        context.router,
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                ),
                const SizedBox(height: 166),
              ],
            ),

            // SvgPicture.asset('assets/background.svg'),
          ],
        ),
      ),
    ),
  );
}
