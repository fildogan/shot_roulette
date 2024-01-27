import 'package:flutter/material.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/settings_page/widgets/header.dart';
import 'package:shot_roulette/features/settings_page/widgets/seperator.dart';
import 'package:shot_roulette/features/settings_page/widgets/setting_button.dart';

@immutable
class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.settingsItems,
    this.header,
  });

  final List<SettingItemModel> settingsItems;
  final i = 0;
  final String? header;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(header),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black26),
          child: Column(
            children: [
              for (int i = 0;
                  i < settingsItems.length;
                  i++
                  // final item in settingsItems
                  ) ...[
                SettingButton(
                  title: settingsItems[i].title,
                  buttonPosition: settingsItems.length == 1
                      ? ButtonPosition.single
                      : i == 0
                          ? ButtonPosition.top
                          : i == settingsItems.length - 1
                              ? ButtonPosition.bottom
                              : ButtonPosition.middle,
                  onTap: settingsItems[i].onTap,
                  trailing: settingsItems[i].trailing ??
                      const Icon(Icons.chevron_right),
                ),
                if (i != settingsItems.length - 1) const Seperator(),
              ]
            ],
          ),
        ),
      ],
    );
  }
}
