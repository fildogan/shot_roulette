import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';

import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/auth/widgets/go_auth_home_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';
import 'package:shot_roulette/features/log_in/cubit/log_in_cubit.dart';
import 'package:shot_roulette/features/log_in/widgets/log_in_text_field.dart';
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

@immutable
class LogInPage extends StatelessWidget {
  const LogInPage(
      {super.key,
      // required this.rootState,
      required this.isCreatingAccount,
      required this.isStartingPage});

  // final RootState rootState;
  final bool isCreatingAccount;
  final bool isStartingPage;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => getIt<LogInCubit>(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return BlocConsumer<LogInCubit, LogInState>(
            listener: (context, state) {
              // Handle state changes here, if needed
              if (state.authError.isNotEmpty) {
                _showErrorSnackBar(context, state.authError);
              }
              if (state.authStatus == Status.success && !isStartingPage) {
                context.read<SettingsPageCubit>().resetSettingsPage();
              }
            },
            builder: (context, state) {
              return Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: isStartingPage
                      ? const GoAuthHomeButton()
                      : ResetSettingPageButton(
                          status: state.authStatus,
                        ),
                  title: Text(isCreatingAccount
                      ? localizations.signUp
                      : localizations.logIn),
                ),
                body: SafeArea(
                  child: Center(
                    child: state.authStatus == Status.loading
                        ? const CircularProgressIndicator()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              children: [
                                const Spacer(
                                  flex: 1,
                                ),
                                _emailField(state),
                                if (isCreatingAccount) _repeatEmailField(state),
                                _passwordField(state),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomMainButton(
                                  onPressed: () {
                                    isCreatingAccount
                                        ? isStartingPage
                                            ? context
                                                .read<LogInCubit>()
                                                .createUserWithEmailAndPassword()
                                            : context
                                                .read<LogInCubit>()
                                                .linkWithEmailAndPassword()
                                                .then((value) {
                                                context
                                                    .read<RootCubit>()
                                                    .startUserSubscription();
                                              })
                                        : context
                                            .read<LogInCubit>()
                                            .signInWithEmailAndPassword();
                                  },
                                  title: isCreatingAccount
                                      ? localizations.signUp
                                      : localizations.logIn,
                                ),
                                const Spacer(
                                  flex: 2,
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
        return LogInTextField(
          child: TextFormField(
            initialValue: state.email,
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
          ),
        );
      },
    );
  }

  Widget _repeatEmailField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return LogInTextField(
          child: TextFormField(
            initialValue: state.repeatEmail,
            onChanged: (value) {
              context.read<LogInCubit>().changeRepeatEmail(value: value);
            },
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: AppLocalizations.of(context)!.email,
              contentPadding: const EdgeInsets.all(10),
            ),
            // validator: (value) => state.isNameValid
            //     ? null
            //     : AppLocalizations.of(context).pleaseEnterExpenseName,
          ),
        );
      },
    );
  }

  Widget _passwordField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return LogInTextField(
          child: TextFormField(
            initialValue: state.password,
            onChanged: (value) {
              context.read<LogInCubit>().changePassword(value: value);
            },
            obscureText: true,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: AppLocalizations.of(context)!.password,
              contentPadding: const EdgeInsets.all(10),
            ),
            // validator: (value) => state.isNameValid
            //     ? null
            //     : AppLocalizations.of(context).pleaseEnterExpenseName,
          ),
        );
      },
    );
  }

  void _showErrorSnackBar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          errorMessage,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
