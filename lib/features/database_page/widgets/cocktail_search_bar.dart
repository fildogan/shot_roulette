import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      child: TextField(
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
          suffixIcon: state.searchText.isEmpty
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
          prefix: const Text('  '),
        ),
      ),
    );
  }
}
