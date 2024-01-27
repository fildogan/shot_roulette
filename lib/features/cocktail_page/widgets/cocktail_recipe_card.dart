import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_amount.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_name.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/ingredient_table_header.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/rating_row.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/tags_wrap.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/video_player.dart';

class CocktailRecipeCard extends StatelessWidget {
  const CocktailRecipeCard({
    super.key,
    required this.state,
  });

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    // YoutubePlayerController youtubePlayerController = YoutubePlayerController(
    //   initialVideoId: state.videoId,
    //   flags: const YoutubePlayerFlags(
    //     autoPlay: false,
    //     mute: false,
    //   ),
    // );
    return Card(
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
                      child: Text(
                    state.cocktail!.strDrink ?? '',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
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
                  // youtubePlayerController: youtubePlayerController,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
