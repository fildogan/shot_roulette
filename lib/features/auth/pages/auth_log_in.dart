import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';

import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart';
import 'package:shot_roulette/features/auth/widgets/go_auth_home_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';

@immutable
class AuthLogInPage extends StatelessWidget {
  const AuthLogInPage({
    super.key,
    required this.state,
  });

  final AuthPageState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final bool isCreatingAccount =
        (state.authScreen == AuthScreen.signUp ? true : false);

    return BlocBuilder<AuthPageCubit, AuthPageState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: GoAuthHomeButton(
              status: state.authStatus,
            ),
            title: Text(
                isCreatingAccount ? localizations.signUp : localizations.logIn),
          ),
          body: SafeArea(
            child: Center(
              child: state.authStatus == Status.loading
                  ? const CircularProgressIndicator()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ListView(
                        children: [
                          _emailField(state),
                          _passwordField(state),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomMainButton(
                              onPressed: () {
                                isCreatingAccount
                                    ? context
                                        .read<AuthPageCubit>()
                                        .createUserWithEmailAndPassword()
                                    : context
                                        .read<AuthPageCubit>()
                                        .signInWithEmailAndPassword();
                              },
                              title: isCreatingAccount
                                  ? localizations.signUp
                                  : localizations.logIn),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }

  Widget _emailField(AuthPageState state) {
    return BlocBuilder<AuthPageCubit, AuthPageState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.email,
          onChanged: (value) {
            context.read<AuthPageCubit>().changeEmail(value: value);
          },
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: AppLocalizations.of(context)!.email,
            contentPadding: const EdgeInsets.all(10),
          ),
          // validator: (value) => state.isNameValid
          //     ? null
          //     : AppLocalizations.of(context).pleaseEnterExpenseName,
        );
      },
    );
  }

  Widget _passwordField(AuthPageState state) {
    return BlocBuilder<AuthPageCubit, AuthPageState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.password,
          onChanged: (value) {
            context.read<AuthPageCubit>().changePassword(value: value);
          },
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: AppLocalizations.of(context)!.password,
            contentPadding: const EdgeInsets.all(10),
          ),
          // validator: (value) => state.isNameValid
          //     ? null
          //     : AppLocalizations.of(context).pleaseEnterExpenseName,
        );
      },
    );
  }
}
