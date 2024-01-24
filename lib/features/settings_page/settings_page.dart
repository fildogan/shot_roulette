import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/settings_page/pages/language_selection.dart';
import 'package:shot_roulette/features/settings_page/pages/log_in/log_in_page.dart';
import 'package:shot_roulette/features/settings_page/pages/theme_selection.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    if (state.settingsMenuPage != null) {
      return state.settingsMenuPage!;
    } else {
      return Padding(
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
                          .read<RollShotCubit>()
                          .changeSettingsPage(ThemeSelectionPage(state: state));
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  SettingItemModel(
                    title: localizations.language,
                    onTap: () {
                      context.read<RollShotCubit>().changeSettingsPage(
                          LanguageSelectionPage(state: state));
                    },
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
              // Account if logged in
              if (state.user != null)
                SettingsItem(settingsItems: [
                  SettingItemModel(
                    onTap: () {
                      context.read<RollShotCubit>().signOut();
                    },
                    title: localizations.logOut,
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ], header: localizations.account),

              // Account if not logged in
              if (state.user == null)
                SettingsItem(settingsItems: [
                  SettingItemModel(
                    onTap: () {
                      context
                          .read<RollShotCubit>()
                          .changeSettingsPage(LogInPage(
                            rootState: state,
                            isCreatingAccount: false,
                          ));
                    },
                    title: localizations.logIn,
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  SettingItemModel(
                    onTap: () {
                      context
                          .read<RollShotCubit>()
                          .changeSettingsPage(LogInPage(
                            rootState: state,
                            isCreatingAccount: true,
                          ));
                    },
                    title: localizations.signUp,
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ], header: localizations.account),
            ],
          ),
        ),
      );
    }
  }
}
