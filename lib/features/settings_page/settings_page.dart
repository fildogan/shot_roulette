import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/app/url_launches.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/log_in/log_in_page.dart';
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart';
import 'package:shot_roulette/features/settings_page/pages/language_selection.dart';
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
                        SettingsItem(
                          settingsItems: [
                            SettingItemModel(
                              onTap: () {
                                context
                                    .read<SettingsPageCubit>()
                                    .changeSettingsPage(const LogInPage(
                                      isCreatingAccount: true,
                                      isStartingPage: false,
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
                          ],
                          header: localizations.account,
                        ),

                      // Legal
                      SettingsItem(settingsItems: [
                        SettingItemModel(
                          title: localizations.termsOfUse,
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => launchUrlSite(
                              url: 'https://flutterdog.com/shotroulette/terms'),
                        ),
                        SettingItemModel(
                          title: localizations.privacyPolicy,
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => launchUrlSite(
                              url:
                                  'https://flutterdog.com/shotroulette/privacy'),
                        )
                      ], header: localizations.legal),
                      const SizedBox(height: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          'assets/images/cocktail_image_2.jpg',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // const SizedBox(height: 20),
                      // Center(
                      //   child: AutoSizeText(
                      //     'Cocktail Hub ${packageinfo.version} (${packageinfo.buildNumber})',
                      //     maxLines: 1,
                      //   ),
                      // ),
                      // const SizedBox(height: 20),

                      // a switch for toggling english or native instructions

                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       const Text('show english translations?'),
                      //       Switch(
                      //           value: rootState.showEnglishTranslations,
                      //           onChanged: ((value) {
                      //             context
                      //                 .read<RootCubit>()
                      //                 .changeShowTranslationsBool();
                      //           })),
                      //     ],
                      //   ),
                      // )
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
