import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CocktailSearchBar extends StatelessWidget {
  const CocktailSearchBar({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: textEditingController,
        onChanged: (value) {
          context.read<DatabasePageCubit>().getCocktailListByName(value);
        },
        decoration: InputDecoration(
          labelText: localizations.search,
          prefixIcon: const Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
