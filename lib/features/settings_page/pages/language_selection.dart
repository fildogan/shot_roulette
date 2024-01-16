import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

@immutable
class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RollShotCubit, RollShotState>(
      builder: (context, state) {
        return Scaffold(
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
                            context.read<RollShotCubit>().setLanguageEnglish();
                          },
                          title: 'English',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.en
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RollShotCubit>().setLanguagePolish();
                          },
                          title: 'Polski',
                          trailing:
                              state.selectedLanguage == SelectedLanguage.pl
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
