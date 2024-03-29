import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cocktail_page.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';
import 'package:shot_roulette/features/database_page/widgets/back_button.dart';

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

    final TextEditingController textEditingController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<DatabasePageCubit>(),
      child: BlocBuilder<DatabasePageCubit, DatabasePageState>(
        builder: (context, state) {
          List<String> characters = List.generate(
              26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index))
            ..addAll(List.generate(10, (index) => '$index'));

          String searchQuery =
              context.watch<DatabasePageCubit>().state.searchText;

          textEditingController.text = searchQuery;
          return Scaffold(
            appBar: AppBar(
              title: Text(localizations.database),
              leading: (state.chosenFilter == null &&
                      state.showLetters == false &&
                      state.cocktail == null)
                  ? null
                  : DatabaseBackButton(status: state.status),
            ),
            body: Column(
              children: [
                if (state.showLetters == false &&
                    state.chosenFilter == null &&
                    state.cocktail == null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: textEditingController,
                      onChanged: (value) {
                        context
                            .read<DatabasePageCubit>()
                            .getCocktailListByName(value);
                      },
                      decoration: InputDecoration(
                        labelText: localizations.search,
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: state.status == Status.loading
                        ? const Center(child: CircularProgressIndicator())
                        : state.cocktail != null
                            ? CocktailPage(
                                rootState: rootState,
                                isDatabase: true,
                                cocktail: state.cocktail,
                              )
                            : SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SettingsItem(
                                      settingsItems: state.showCocktails
                                          ? [
                                              for (final cocktail
                                                  in state.cocktailList)
                                                SettingItemModel(
                                                  title:
                                                      cocktail.strDrink ?? '',
                                                  onTap: () {
                                                    context
                                                        .read<
                                                            DatabasePageCubit>()
                                                        .getCocktailById(
                                                            cocktail.idDrink ??
                                                                '');
                                                  },
                                                  trailing: const Icon(
                                                      Icons.chevron_right),
                                                ),
                                            ]
                                          : state.chosenFilter != null
                                              ? [
                                                  for (final filter
                                                      in state.filterList)
                                                    SettingItemModel(
                                                      title: filter.strCategory ??
                                                          filter.strGlass ??
                                                          filter
                                                              .strIngredient1 ??
                                                          filter.strAlcoholic ??
                                                          '',
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                DatabasePageCubit>()
                                                            .getCocktailListFilter(
                                                              filter.strCategory ??
                                                                  filter
                                                                      .strGlass ??
                                                                  filter
                                                                      .strIngredient1 ??
                                                                  filter
                                                                      .strAlcoholic ??
                                                                  '',
                                                            );
                                                      },
                                                      trailing: const Icon(
                                                          Icons.chevron_right),
                                                    ),
                                                ]
                                              : state.showLetters == true
                                                  ? [
                                                      for (final letter
                                                          in characters)
                                                        SettingItemModel(
                                                          title: letter,
                                                          onTap: () {
                                                            context
                                                                .read<
                                                                    DatabasePageCubit>()
                                                                .getCocktailListByLetter(
                                                                    letter);
                                                          },
                                                          trailing: const Icon(
                                                              Icons
                                                                  .chevron_right),
                                                        ),
                                                    ]
                                                  : [
                                                      SettingItemModel(
                                                        title: localizations
                                                            .category,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  DatabasePageCubit>()
                                                              .getFilterList(
                                                                  ChosenFilter
                                                                      .c);
                                                        },
                                                        trailing: const Icon(
                                                            Icons
                                                                .chevron_right),
                                                      ),
                                                      SettingItemModel(
                                                        title: localizations
                                                            .glassType,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  DatabasePageCubit>()
                                                              .getFilterList(
                                                                  ChosenFilter
                                                                      .g);
                                                        },
                                                        trailing: const Icon(
                                                            Icons
                                                                .chevron_right),
                                                      ),
                                                      SettingItemModel(
                                                        title: localizations
                                                            .ingredient,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  DatabasePageCubit>()
                                                              .getFilterList(
                                                                  ChosenFilter
                                                                      .i);
                                                        },
                                                        trailing: const Icon(
                                                            Icons
                                                                .chevron_right),
                                                      ),
                                                      SettingItemModel(
                                                        title: localizations
                                                            .alcoholicType,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  DatabasePageCubit>()
                                                              .getFilterList(
                                                                  ChosenFilter
                                                                      .a);
                                                        },
                                                        trailing: const Icon(
                                                            Icons
                                                                .chevron_right),
                                                      ),
                                                      SettingItemModel(
                                                        title: localizations
                                                            .letter,
                                                        onTap: () {
                                                          context
                                                              .read<
                                                                  DatabasePageCubit>()
                                                              .showLetters();
                                                        },
                                                        trailing: const Icon(
                                                            Icons
                                                                .chevron_right),
                                                      ),
                                                    ],
                                    ),
                                  ],
                                ),
                              ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
