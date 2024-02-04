import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_amount.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_name.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_table_header.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/rating_row.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/sign_in_alert_dialog.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/tags_wrap.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/video_player.dart';
import 'package:shot_roulette/features/database_page/widgets/back_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CocktailRecipeCard extends StatelessWidget {
  const CocktailRecipeCard({
    super.key,
    required this.state,
    required this.rootState,
    required this.youtubePlayerController,
  });

  final CocktailPageState state;
  final RootState rootState;

  final YoutubePlayerController youtubePlayerController;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (state.cocktail != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 28,
                      ),
                      if (state.isDatabase)
                        DatabaseBackButton(status: state.status),
                      Expanded(
                        child: AutoSizeText(
                          state.cocktail!.strDrink ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            if (rootState.user?.isAnonymous ?? true) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const SignInAlertDialog();
                                  });
                            } else if (state.isFavourite) {
                              context
                                  .read<CocktailPageCubit>()
                                  .removeFromFavourite();
                            } else {
                              context
                                  .read<CocktailPageCubit>()
                                  .setToFavourite();
                            }
                          },
                          icon: state.isFavourite
                              ? Icon(
                                  Icons.star,
                                  color: Colors.amber.shade300,
                                )
                              : const Icon(Icons.star_outline)),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  )),
                ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      child: (state.cocktail != null &&
                              state.cocktail!.strDrinkThumb != null)
                          ? Image.network(
                              state.cocktail!.strDrinkThumb!,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            )
                          : Image.asset(
                              'assets/images/Mad-Dog.jpg',
                              fit: BoxFit.fill,
                              width: double.infinity,
                            )),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(flex: 3),
                    1: IntrinsicColumnWidth(flex: 1),
                  },
                  children: [
                    const TableRow(children: [
                      IngredientTableHeader(
                        title: 'Ingredient',
                      ),
                      IngredientTableHeader(
                        title: 'Measure',
                      ),
                    ]),
                    for (int i = 0; i < (state.ingredientNameList.length); i++)
                      TableRow(children: [
                        IngredientName(i: i, state: state),
                        IngredientAmount(i: i, state: state),
                      ])
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: BlocBuilder<RootCubit, RootState>(
                  builder: (context, rootState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Instructions:'),
                        Text(state.chosenLanguageInstructions(
                            rootState.selectedLanguage)),
                      ],
                    );
                  },
                ),
              ),
              if (state.cocktail?.strGlass != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Serve in: ${state.cocktail?.strGlass}'),
                ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: RatingRow(state: state),
              ),
              if (state.tagsList.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: TagsWrap(state: state),
                ),
              if (state.cocktail?.strVideo != null)
                VideoPlayer(
                  state: state,
                  youtubePlayerController: youtubePlayerController,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
