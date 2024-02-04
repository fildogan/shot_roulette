import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart';
import 'package:shot_roulette/features/auth/pages/auth_home.dart';
import 'package:shot_roulette/features/auth/pages/auth_log_in.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    super.key,
    // required this.rootState,
  });

  // final RootState rootState;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthPageCubit>(),
      child: BlocBuilder<AuthPageCubit, AuthPageState>(
        builder: (context, state) {
          return Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage('assets/images/papercut_background.jpg'),
                fit: BoxFit.fill,
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Builder(builder: (context) {
                  switch (state.authScreen) {
                    case AuthScreen.home:
                      return AuthHomePage(
                        state: state,
                      );
                    case AuthScreen.logIn:
                      return AuthLogInPage(
                        isCreatingAccount: false,
                      );
                    case AuthScreen.signUp:
                      return AuthLogInPage(
                        isCreatingAccount: true,
                      );
                  }
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
