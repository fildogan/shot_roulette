import 'package:flutter/material.dart';
import 'package:shot_roulette/app/cubit/root_cubit.dart';

class IngredientName extends StatelessWidget {
  const IngredientName({
    super.key,
    required this.i,
    required this.state,
  });

  final int i;
  final RootState state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(state.chosenRecipe?.ingredients[i].ingredientNameId ?? 'null'),
    );
  }
}
