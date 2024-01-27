import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/setting_item_model.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cocktail_page.dart';
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart';
import 'package:shot_roulette/features/database_page/widgets/back_button.dart';
import 'package:shot_roulette/features/database_page/widgets/cocktail_search_bar.dart';

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
              actions: [
                if (state.isSearching && state.cocktail == null)
                  TextButton(
                      onPressed: () {
                        context
                            .read<DatabasePageCubit>()
                            .getCocktailListByName('');

                        context.read<DatabasePageCubit>().stopSearch();
                      },
                      child: Text(localizations.cancel))
              ],
            ),
            body: Column(
              children: [
                if (state.showLetters == false &&
                    state.chosenFilter == null &&
                    state.cocktail == null)
                  CocktailSearchBar(
                    textEditingController: textEditingController,
                    state: state,
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
                                      settingsItems: (state.showCocktails ||
                                              state.isSearching)
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
                                                ),
                                            ]
                                          : state.chosenFilter != null
                                              ? [
                                                  for (final filter
                                                      in state.sortedFilterList)
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
