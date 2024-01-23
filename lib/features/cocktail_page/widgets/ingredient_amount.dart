import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';

class IngredientAmount extends StatelessWidget {
  const IngredientAmount({
    super.key,
    required this.i,
    required this.state,
  });

  final int i;
  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return Text(state.ingredientMeasureList[i] ?? '');
  }
}
