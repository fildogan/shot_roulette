import 'package:flutter/material.dart';
import 'package:shot_roulette/features/roll_shot/cubit/roll_shot_cubit.dart';
import 'package:shot_roulette/features/roll_shot/widgets/roll_shot_button.dart';
import 'package:shot_roulette/features/roll_shot/widgets/shot_recipe_card.dart';

class RollShotPage extends StatelessWidget {
  const RollShotPage({
    super.key,
    required this.mainContainerHeight,
    required this.state,
  });

  final double mainContainerHeight;
  final RollShotState state;

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
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: SizedBox(
                  height: double.infinity,
                  child: ShotRecipeCard(state: state),
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
