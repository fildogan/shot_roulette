import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';

import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/features/auth/widgets/go_auth_home_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/custom_main_button.dart';
import 'package:shot_roulette/features/log_in/cubit/log_in_cubit.dart';
import 'package:shot_roulette/features/log_in/widgets/log_in_text_field.dart';
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';

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
          final formKey = GlobalKey<FormState>();

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
                  backgroundColor: Colors.black45,
                  leading: isStartingPage
                      ? const GoAuthHomeButton()
                      : ResetSettingPageButton(
                          status: state.authStatus,
                        ),
                  title: Text(
                    isCreatingAccount
                        ? localizations.signUp
                        : localizations.logIn,
                  ),
                ),
                body: SafeArea(
                  child: Center(
                    child: state.authStatus == Status.loading
                        ? const CircularProgressIndicator()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  _emailField(state),
                                  _passwordField(state),
                                  if (isCreatingAccount)
                                    _repeatPasswordField(state),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CustomMainButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
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
                                      }
                                    },
                                    title: isCreatingAccount
                                        ? localizations.signUp
                                        : localizations.logIn,
                                  ),
                                  const Spacer(
                                    flex: 3,
                                  ),
                                ],
                              ),
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
          state: state,
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
            validator: (value) {
              if (state.isEmailNull) {
                return 'Enter Your E-mail address';
              } else if (state.isEmailValid) {
                return 'Enter a valid email address.';
              } else {
                return null;
              }
            },
          ),
        );
      },
    );
  }

  Widget _passwordField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return LogInTextField(
          state: state,
          isPassword: true,
          child: TextFormField(
            initialValue: state.password,
            onChanged: (value) {
              context.read<LogInCubit>().changePassword(value: value);
            },
            obscureText: !state.showPassword,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: AppLocalizations.of(context)!.password,
              contentPadding: const EdgeInsets.all(10),
            ),
            validator: (value) {
              if (state.isPasswordNull) {
                return 'Enter a password';
              } else if (isCreatingAccount) {
                if (state.isPasswordShort) {
                  return 'Should be at leat 8 characters long';
                } else if (state.isPasswordNoUppercase) {
                  return 'Password must contain at least one uppercase letter.';
                } else if (state.isPasswordNoLowercase) {
                  return 'Password must contain at least one lowercase letter.';
                } else if (state.isPasswordNoDigit) {
                  return 'Password must contain at least one digit.';
                }
              } else {
                return null;
              }
              return null;
            },
          ),
        );
      },
    );
  }

  Widget _repeatPasswordField(LogInState state) {
    return BlocBuilder<LogInCubit, LogInState>(
      builder: (context, state) {
        return LogInTextField(
          state: state,
          isPassword: true,
          child: TextFormField(
            initialValue: state.repeatPassword,
            onChanged: (value) {
              context.read<LogInCubit>().changeRepeatPassword(value: value);
            },
            obscureText: !state.showPassword,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Repeat ${AppLocalizations.of(context)!.password}',
              contentPadding: const EdgeInsets.all(10),
            ),
            validator: (value) {
              if (isCreatingAccount) {
                if (state.isRepeatPasswordNull) {
                  return 'Repeat password';
                } else if (!state.arePasswordsTheSame && isCreatingAccount) {
                  return 'Passwords should be the same';
                } else {
                  return null;
                }
              }
              return null;
            },
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
