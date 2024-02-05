import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

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
                CustomMainButton(
                  onPressed: () {
                    context.read<AuthPageCubit>().goLogInPage();
                  },
                  title: 'Log In',
                ),
                CustomMainButton(
                  onPressed: () {
                    context.read<AuthPageCubit>().goSignUp();
                  },
                  title: 'Sign Up',
                ),
                CustomMainButton(
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
