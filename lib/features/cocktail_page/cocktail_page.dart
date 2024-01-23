import 'package:flutter/material.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/roll_shot_button.dart';
import 'package:shot_roulette/features/cocktail_page/widgets/cocktail_recipe_card.dart';

class CocktailPage extends StatelessWidget {
  const CocktailPage({
    super.key,
    required this.mainContainerHeight,
    required this.state,
  });

  final double mainContainerHeight;
  final RootState state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (state.chosenRecipe != null)
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
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
                child: Image.asset('assets/images/casino_roulette.png'),
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
  }
}
