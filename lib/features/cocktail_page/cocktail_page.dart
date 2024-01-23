import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/app/injection_container.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/roll_shot_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/cocktail_recipe_card.dart';

class CocktailPage extends StatelessWidget {
  const CocktailPage({
    super.key,
    required this.mainContainerHeight,
    required this.rootState,
  });

  final double mainContainerHeight;
  final RootState rootState;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CocktailPageCubit>(),
      child: BlocBuilder<CocktailPageCubit, CocktailPageState>(
        builder: (context, state) {
          return Center(
            child: state.status == Status.loading
                ? const CircularProgressIndicator()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (state.cocktail != null)
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
                            height: mainContainerHeight,
                            width: 150,
                            child: Image.asset(
                                'assets/images/casino_roulette.png'),
                          ),
                        ),
                      // Spacer(),
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
