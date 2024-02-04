import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart';
import 'package:shot_roulette/features/settings_page/pages/language_selection.dart';
import 'package:shot_roulette/features/settings_page/pages/log_in/log_in_page.dart';
import 'package:shot_roulette/features/settings_page/pages/theme_selection.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.rootState,
  });

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => getIt<SettingsPageCubit>(),
      child: BlocBuilder<SettingsPageCubit, SettingsPageState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.settingsMenuPage != null) {
            return state.settingsMenuPage!;
          } else {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                title: Text(localizations.settings),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SettingsItem(
                        header: localizations.application,
                        settingsItems: [
                          SettingItemModel(
                            title: localizations.theme,
                            onTap: () {
                              context
                                  .read<SettingsPageCubit>()
                                  .changeSettingsPage(
                                      ThemeSelectionPage(state: rootState));
                            },
                          ),
                          SettingItemModel(
                            title: localizations.language,
                            onTap: () {
                              context
                                  .read<SettingsPageCubit>()
                                  .changeSettingsPage(
                                      LanguageSelectionPage(state: rootState));
                            },
                          ),
                        ],
                      ),
                      // Account if logged in
                      if (rootState.user != null &&
                          !(rootState.user?.isAnonymous ?? false))
                        SettingsItem(settingsItems: [
                          SettingItemModel(
                            onTap: () {
                              context.read<SettingsPageCubit>().signOut();
                            },
                            title: localizations.logOut,
                          ),
                        ], header: localizations.account),

                      // Account if not logged in

                      if (rootState.user == null ||
                          (rootState.user?.isAnonymous ?? false))
                        SettingsItem(settingsItems: [
                          // SettingItemModel(
                          //   onTap: () {
                          //     context
                          //         .read<SettingsPageCubit>()
                          //         .changeSettingsPage(LogInPage(
                          //           rootState: rootState,
                          //           isCreatingAccount: false,
                          //         ));
                          //   },
                          //   title: localizations.logIn,
                          // ),
                          SettingItemModel(
                            onTap: () {
                              context
                                  .read<SettingsPageCubit>()
                                  .changeSettingsPage(LogInPage(
                                    rootState: rootState,
                                    isCreatingAccount: true,
                                  ));
                            },
                            title: localizations.signUp,
                          ),
                          SettingItemModel(
                            onTap: () {
                              context.read<SettingsPageCubit>().deleteUser();
                            },
                            title: localizations.logOut,
                          ),
                        ], header: localizations.account),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text('show english translations?'),
                            Switch(
                                value: rootState.showEnglishTranslations,
                                onChanged: ((value) {
                                  context
                                      .read<RootCubit>()
                                      .changeShowTranslationsBool();
                                })),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
