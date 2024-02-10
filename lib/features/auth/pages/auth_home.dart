import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart';
import 'package:shot_roulette/features/auth/widgets/home_auth_button.dart';

class AuthHomePage extends StatelessWidget {
  const AuthHomePage({super.key, required this.state});

  final AuthPageState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Center(
      child: state.authStatus == Status.loading
          ? const CircularProgressIndicator()
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeAuthButton(
                  onPressed: () {
                    context.read<AuthPageCubit>().goLogInPage();
                  },
                  title: 'Log In',
                ),
                HomeAuthButton(
                  onPressed: () {
                    context.read<AuthPageCubit>().goSignUp();
                  },
                  title: 'Sign Up',
                ),
                HomeAuthButton(
                  onPressed: () {
                    context.read<AuthPageCubit>().signInAnonymously();
                  },
                  title: 'Anonymous',
                ),
              ],
            ),
    );
  }
}
