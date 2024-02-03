import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart';
import 'package:shot_roulette/features/main_menu_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key, required this.rootState});

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    // if (rootState.status == Status.loading) {
    //   return const CircularProgressIndicator();
    // }
    // if (rootState.user == null) {
    //   // return LoginPage();
    //   return const CircularProgressIndicator();
    // }

    return BlocProvider(
      create: (context) => getIt<AuthPageCubit>(),
      child: BlocBuilder<AuthPageCubit, AuthPageState>(
        builder: (context, state) {
          switch (state.authScreen) {
            case AuthScreen.home:
              return MainMenuPage(rootState: rootState);
            case AuthScreen.logIn:
              return MainMenuPage(rootState: rootState);
            case AuthScreen.signUp:
              return MainMenuPage(rootState: rootState);
          }
        },
      ),
    );
  }
}
