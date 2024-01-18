import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/custom_main_button.dart';
import 'package:shot_roulette/features/settings_page/pages/log_in/cubit/log_in_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';

@immutable
class LogInPage extends StatelessWidget {
  const LogInPage({
    super.key,
    required this.rootState,
    required this.isCreatingAccount,
  });

  final RollShotState rootState;
  final bool isCreatingAccount;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => LogInCubit(),
      child: BlocBuilder<RollShotCubit, RollShotState>(
        builder: (context, state) {
          return BlocBuilder<LogInCubit, LogInState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: const ResetSettingPageButton(),
                  title: Text(isCreatingAccount
                      ? localizations.signUp
                      : localizations.logIn),
                ),
                body: SafeArea(
                  child: Center(
                    child: Padding(
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
                                        .read<LogInCubit>()
                                        .createUserWithEmailAndPassword()
                                    : context
                                        .read<LogInCubit>()
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
        },
      ),
    );
  }

  Widget _emailField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.emailValue,
          onChanged: (value) {
            context.read<LogInCubit>().changeEmail(value: value);
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

  Widget _passwordField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.passwordValue,
          onChanged: (value) {
            context.read<LogInCubit>().changePassword(value: value);
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
