import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

@immutable
class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({
    super.key,
    required this.state,
  });

  final RootState state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const ResetSettingPageButton(),
            title: Text(
                '${AppLocalizations.of(context)!.choose} ${AppLocalizations.of(context)!.language}'),
          ),
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SettingsItem(
                      settingsItems: [
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setLanguageEnglish();
                          },
                          title: 'English',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.en
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setLanguageSpanish();
                          },
                          title: 'Spanish',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.es
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setLanguageGerman();
                          },
                          title: 'German',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.de
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setLanguageFrench();
                          },
                          title: 'French',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.fr
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setLanguageItalian();
                          },
                          title: 'Italian',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.it
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                      ],
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
}
