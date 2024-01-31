import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/reset_settings_page_button.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

@immutable
class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({
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
                '${AppLocalizations.of(context)!.choose} ${AppLocalizations.of(context)!.theme}'),
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
                            context.read<RootCubit>().setThemeDark();
                          },
                          title: AppLocalizations.of(context)!.dark,
                          trailing: state.selectedTheme == SelectedTheme.dark
                              ? const Icon(Icons.check_box)
                              : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setThemeLight();
                          },
                          title: AppLocalizations.of(context)!.light,
                          trailing: state.selectedTheme == SelectedTheme.light
                              ? const Icon(Icons.check_box)
                              : const Icon(Icons.check_box_outline_blank),
                        ),
                        SettingItemModel(
                          onTap: () {
                            context.read<RootCubit>().setThemeSystem();
                          },
                          title: AppLocalizations.of(context)!.system,
                          trailing: state.selectedTheme == SelectedTheme.system
                              ? const Icon(Icons.check_box)
                              : const Icon(Icons.check_box_outline_blank),
                        )
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
