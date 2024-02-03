import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

class CocktailSearchBar extends StatelessWidget {
  const CocktailSearchBar(
      {super.key, required this.textEditingController, required this.state});

  final TextEditingController textEditingController;
  final DatabasePageState state;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    if (!state.isSearching) FocusManager.instance.primaryFocus?.unfocus();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SettingsItem(settingsItems: [
        SettingItemModel(
          trailing: state.searchText.isEmpty
              ? const Icon(
                  Icons.search,
                )
              : IconButton(
                  onPressed: () {
                    context.read<DatabasePageCubit>().getCocktailListByName('');
                  },
                  icon: const Icon(
                    Icons.backspace,
                  ),
                ),
          onTap: null,
          title: '',
          titleWidget: TextField(
            style: (const TextStyle(
              fontWeight: FontWeight.w700,
            )),
            onTap: () {
              context.read<DatabasePageCubit>().startSearch();
            },
            controller: textEditingController,
            onChanged: (value) {
              context.read<DatabasePageCubit>().getCocktailListByName(value);
            },
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: '  ${localizations.search}',
              prefix: const Text('  '),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
