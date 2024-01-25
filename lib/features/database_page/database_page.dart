import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';

import 'package:shot_roulette/features/settings_page/widgets/settings_item.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DatabasePage extends StatelessWidget {
  const DatabasePage({
    super.key,
    required this.rootState,
  });

  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => getIt<DatabasePageCubit>(),
      child: BlocBuilder<DatabasePageCubit, DatabasePageState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SettingsItem(
                      header: 'Filter by:',
                      settingsItems: state.showCocktails
                          ? [
                              for (final cocktail in state.cocktailList)
                                SettingItemModel(
                                  title: cocktail.strDrink ?? '',
                                  onTap: () {
                                    // context
                                    //     .read<DatabasePageCubit>()
                                    //     .getCocktailListByCategory(
                                    //         filter.strCategory ?? '');
                                  },
                                  trailing: const Icon(Icons.chevron_right),
                                ),
                            ]
                          : state.chosenFilter != null
                              ? [
                                  for (final filter in state.filterList)
                                    SettingItemModel(
                                      title: filter.strCategory ??
                                          filter.strGlass ??
                                          filter.strIngredient1 ??
                                          filter.strAlcoholic ??
                                          '',
                                      onTap: () {
                                        context
                                            .read<DatabasePageCubit>()
                                            .getCocktailListFilter(
                                              filter.strCategory ??
                                                  filter.strGlass ??
                                                  filter.strIngredient1 ??
                                                  filter.strAlcoholic ??
                                                  '',
                                            );
                                      },
                                      trailing: const Icon(Icons.chevron_right),
                                    ),
                                ]
                              : [
                                  SettingItemModel(
                                    title: localizations.category,
                                    onTap: () {
                                      context
                                          .read<DatabasePageCubit>()
                                          .getFilterList(ChosenFilter.c);
                                    },
                                    trailing: const Icon(Icons.chevron_right),
                                  ),
                                  SettingItemModel(
                                    title: localizations.glassType,
                                    onTap: () {
                                      context
                                          .read<DatabasePageCubit>()
                                          .getFilterList(ChosenFilter.g);
                                    },
                                    trailing: const Icon(Icons.chevron_right),
                                  ),
                                  SettingItemModel(
                                    title: localizations.ingredient,
                                    onTap: () {
                                      context
                                          .read<DatabasePageCubit>()
                                          .getFilterList(ChosenFilter.i);
                                    },
                                    trailing: const Icon(Icons.chevron_right),
                                  ),
                                  SettingItemModel(
                                    title: localizations.alcoholicType,
                                    onTap: () {
                                      context
                                          .read<DatabasePageCubit>()
                                          .getFilterList(ChosenFilter.a);
                                    },
                                    trailing: const Icon(Icons.chevron_right),
                                  ),
                                ],
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
