import 'package:flutter/material.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
    required this.state,
  });

  final RollShotState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SettingsItem(
              header: 'AppLocalizations.of(context).application',
              settingsItems: [
                SettingItemModel(
                  title: 'AppLocalizations.of(context).theme',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const ThemeSelectionPage(),
                    //   ),
                    // );
                  },
                  trailing: const Icon(Icons.chevron_right),
                ),
                SettingItemModel(
                  title: 'AppLocalizations.of(context).language',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         const LanguageSelectionPage(),
                    //   ),
                    // );
                  },
                  trailing: const Icon(Icons.chevron_right),
                ),
                SettingItemModel(
                  title: 'AppLocalizations.of(context).voyagers',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const VoyagerListPage(),
                    //   ),
                    // );
                  },
                  trailing: const Icon(Icons.chevron_right),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
