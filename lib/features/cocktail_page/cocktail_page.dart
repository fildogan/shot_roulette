import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/roll_shot_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/cocktail_recipe_card.dart';

class CocktailPage extends StatelessWidget {
  const CocktailPage(
      {super.key, required this.rootState, this.cocktail, this.isDatabase});

  final RootState rootState;
  final CocktailModel? cocktail;
  final bool? isDatabase;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double mainContainerHeight = screenHeight * 0.6;
    return BlocProvider(
      create: (context) => getIt<CocktailPageCubit>()
        ..loadCocktail(cocktail, rootState.user?.uid),
      child: BlocBuilder<CocktailPageCubit, CocktailPageState>(
        builder: (context, state) {
          return Center(
            child: state.status == Status.loading
                ? const CircularProgressIndicator()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (isDatabase != true &&
                          state.cocktail == null &&
                          state.status != Status.loading) ...[
                        const Spacer(
                          flex: 2,
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText('TAP ME!'),
                              FadeAnimatedText('For random beverage'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context.read<CocktailPageCubit>().rollShot(
                                rootState.selectedLanguage,
                                rootState.showEnglishTranslations,
                                rootState.user?.uid);
                          },
                          child: Image.asset(
                            'assets/images/bartender.png',
                            fit: BoxFit.fill,
                          ),
                        )
                      ] else if (state.cocktail != null)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 8),
                            child: SizedBox(
                              height: double.infinity,
                              child: CocktailRecipeCard(state: state),
                            ),
                          ),
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 100,
                            // height: mainContainerHeight,
                            width: 150,
                            // child: Image.asset(
                            //     'assets/images/casino_roulette.png'),
                          ),
                        ),
                      // Spacer(),

                      if (isDatabase != true &&
                          state.cocktail != null &&
                          state.status != Status.loading)
                        RolllShotButton(state: state),
                      const SizedBox(
                        height: 10,
                      ),
                      // if (state.chosenRecipe != null) const ResetButton()
                    ],
                  ),
          );
        },
      ),
    );
  }
}
