import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/feature/login/cubit/login_cubit.dart';
import 'package:shopping_app/feature/login/widgets/login_form_widget.dart';
import 'package:shopping_app/style/theme.dart';
import 'package:shopping_app/widgets/loading_view.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({required this.cubit, super.key});

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => cubit,
    child: BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: iconBorderColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => context.router.pop(),
                    icon: SvgPicture.asset(
                      'assets/svg/arrow_back.svg',
                      height: 14.86,
                      width: 8.5,
                      colorFilter: const ColorFilter.mode(
                        primaryNeutral,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: state.isLoading,
                    child: const SingleChildScrollView(
                      child: LoginFormWidget(),
                    ),
                  ),
                  Center(
                    child: Visibility(
                      visible: state.isLoading,
                      child: const LoadingView(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
